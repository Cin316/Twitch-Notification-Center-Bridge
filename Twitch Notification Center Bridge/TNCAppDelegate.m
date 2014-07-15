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
    
    //Register TNCPrefernceWindowDelegate as delegate of preference window.
    self.prefDelegate = [[TNCPreferenceWindowDelegate alloc] init];
    [self.window setDelegate:self.prefDelegate];
}

@end
