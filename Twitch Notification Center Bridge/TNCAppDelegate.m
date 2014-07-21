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
    self.authWebViewDelegate = [[TNCAuthWebViewDelegate alloc] init];
    [self.authWebViewWindow setDelegate:self.authWebViewDelegate];
    
    //Register TNCPrefernceWindowDelegate as delegate of preference window.
    self.prefDelegate = [[TNCPreferenceWindowDelegate alloc] init];
    [self.preferenceWindow setDelegate:self.prefDelegate];
    
    
}

@end
