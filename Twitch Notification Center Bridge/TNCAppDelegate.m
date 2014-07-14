//
//  TNCAppDelegate.m
//  Twitch Notification Center Bridge
//

#import "TNCAppDelegate.h"

@implementation TNCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application.
    NSStatusBar *system = [NSStatusBar systemStatusBar];
    self.statusItem = [system statusItemWithLength:NSVariableStatusItemLength];
    self.statusItem.image = [NSImage imageNamed:@"StatusItemIcon"];
    self.statusItem.alternateImage = [NSImage imageNamed:@"StatusItemIconInverted"];
    self.statusItem.highlightMode = YES;
    self.statusItem.menu = self.statusMenu;
}

@end
