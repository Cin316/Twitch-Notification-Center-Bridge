//
//  TNCPreferenceWindowDelegate.h
//  Twitch Notification Center Bridge
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface TNCPreferenceWindowDelegate : NSObject <NSWindowDelegate>

@property (weak) IBOutlet NSWindow *authWebViewWindow;
@property (weak) IBOutlet WebView *authWebView;

- (IBAction)logButtonPress:(id)sender;

- (BOOL)windowShouldClose:(id)sender;
- (void)windowWillClose:(NSNotification *)notification;

- (void)setUsername:(NSString *)username;
- (void)setLoggedIn:(BOOL)loggedIn;

@end
