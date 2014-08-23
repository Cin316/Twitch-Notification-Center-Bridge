//
//  TNCAppDelegate.h
//  Twitch Notification Center Bridge
//

#import <Cocoa/Cocoa.h>
#import "TNCPreferenceWindowDelegate.h"
#import "TNCAuthWebViewDelegate.h"

@interface TNCAppDelegate : NSObject <NSApplicationDelegate, NSUserNotificationCenterDelegate>

@property (weak) IBOutlet TNCPreferenceWindowDelegate *prefDelegate;
@property (weak) IBOutlet TNCAuthWebViewDelegate *authWebViewDelegate;

@property (assign) IBOutlet NSWindow *preferenceWindow;
@property (weak) IBOutlet NSMenu *statusMenu;
@property (assign) IBOutlet NSWindow *authWebViewWindow;
@property (weak) IBOutlet WebView *authWebView;

@property (strong) NSStatusItem *statusItem;

+ (NSUserNotification*)newNotification:(NSString*)title details:(NSString*)details;

@end
