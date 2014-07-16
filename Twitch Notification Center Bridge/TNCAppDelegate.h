//
//  TNCAppDelegate.h
//  Twitch Notification Center Bridge
//

#import <Cocoa/Cocoa.h>
#import "TNCPreferenceWindowDelegate.h"

@interface TNCAppDelegate : NSObject <NSApplicationDelegate>

@property TNCPreferenceWindowDelegate* prefDelegate;

@property (assign) IBOutlet NSWindow *preferenceWindow;
@property (weak) IBOutlet NSMenu *statusMenu;

@property (strong) NSStatusItem *statusItem;

@end
