//
//  TNCAppDelegate.h
//  Twitch Notification Center Bridge
//

#import <Cocoa/Cocoa.h>
#import "TNCPreferenceWindowDelegate.h"
#import "TNCAuthWebViewDelegate.h"

@interface TNCAppDelegate : NSObject <NSApplicationDelegate>

@property TNCPreferenceWindowDelegate* prefDelegate;
@property TNCAuthWebViewDelegate* authWebViewDelegate;

@property (assign) IBOutlet NSWindow *preferenceWindow;
@property (weak) IBOutlet NSMenu *statusMenu;
@property (assign) IBOutlet NSWindow *authWebViewWindow;

@property (strong) NSStatusItem *statusItem;

@end
