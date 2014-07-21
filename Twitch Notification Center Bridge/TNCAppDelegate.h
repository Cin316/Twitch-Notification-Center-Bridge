//
//  TNCAppDelegate.h
//  Twitch Notification Center Bridge
//

#import <Cocoa/Cocoa.h>
#import "TNCPreferenceWindowDelegate.h"
#import "TNCAuthWebViewDelegate.h"

@interface TNCAppDelegate : NSObject <NSApplicationDelegate, NSUserNotificationCenterDelegate>

@property TNCPreferenceWindowDelegate* prefDelegate;
@property TNCAuthWebViewDelegate* authWebViewDelegate;

@property (assign) IBOutlet NSWindow *preferenceWindow;
@property (weak) IBOutlet NSMenu *statusMenu;
@property (assign) IBOutlet NSWindow *authWebViewWindow;

@property (strong) NSStatusItem *statusItem;

+ (void)sendNotification:(NSString*)title details:(NSString*)details;

@end
