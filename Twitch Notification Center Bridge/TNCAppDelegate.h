//
//  TNCAppDelegate.h
//  Twitch Notification Center Bridge
//

#import <Cocoa/Cocoa.h>

@interface TNCAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSMenu *statusMenu;

@property (strong) NSStatusItem *statusItem;

@end
