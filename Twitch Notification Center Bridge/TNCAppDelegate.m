//
//  TNCAppDelegate.m
//  Twitch Notification Center Bridge
//

#import "TNCAppDelegate.h"
#import "TNCPreferenceWindowDelegate.h"

@implementation TNCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    //Mark the application has no dock icon and no menu bar.
    [NSApp setActivationPolicy:NSApplicationActivationPolicyAccessory];
    
    //Add status item to menu bar with specific icon and menu.
    NSStatusBar *system = [NSStatusBar systemStatusBar];
    self.statusItem = [system statusItemWithLength:NSVariableStatusItemLength];
    self.statusItem.image = [NSImage imageNamed:@"StatusItemIcon"];
    self.statusItem.alternateImage = [NSImage imageNamed:@"StatusItemIconInverted"];
    self.statusItem.highlightMode = YES;
    self.statusItem.menu = self.statusMenu;
    
    //Register TNCAuthWebViewWindowDelegate as delegate of web view window.
    self.authWebViewDelegate = [[TNCAuthWebViewDelegate alloc] initWithWebView:[self authWebView]];
    [self.authWebViewWindow setDelegate:self.authWebViewDelegate];
    
    //Register TNCPrefernceWindowDelegate as delegate of preference window.
    self.prefDelegate = [[TNCPreferenceWindowDelegate alloc] init];
    [self.preferenceWindow setDelegate:self.prefDelegate];
    
    //Make the app display all notifications.
    [[NSUserNotificationCenter defaultUserNotificationCenter] setDelegate:self];
    
    //Send notification to log in.
    NSUserNotification *loginNotification = [TNCAppDelegate newNotification:@"No login credentials!" details:@"Log in first by opening up preferences."];
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:loginNotification];
}

+ (NSUserNotification*)newNotification:(NSString*)title details:(NSString*)details{
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = title;
    notification.informativeText = details;
    notification.soundName = NSUserNotificationDefaultSoundName;
    return notification;
}

//Displays all notifications.
- (BOOL)userNotificationCenter:(NSUserNotificationCenter *)center
     shouldPresentNotification:(NSUserNotification *)notification
{
    return YES;
}

@end
