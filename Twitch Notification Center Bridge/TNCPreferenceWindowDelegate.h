//
//  TNCPreferenceWindowDelegate.h
//  Twitch Notification Center Bridge
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface TNCPreferenceWindowDelegate : NSObject <NSWindowDelegate>

@property (strong) IBOutlet NSWindow *authWebViewWindow;
@property (strong) IBOutlet WebView *authWebView;

@property (strong) IBOutlet NSTextField *usernameTextField;
@property (strong) IBOutlet NSButton *reauthButton;
@property (strong) IBOutlet NSButton *loginButton;

- (IBAction)logButtonPress:(id)sender;

- (BOOL)windowShouldClose:(id)sender;
- (void)windowWillClose:(NSNotification *)notification;

- (void)setUsername:(NSString *)username;
- (void)setLoggedIn:(BOOL)loggedIn;

@end
