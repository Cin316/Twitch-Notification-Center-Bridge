//
//  TNCPreferenceWindowDelegate.h
//  Twitch Notification Center Bridge
//

#import <Foundation/Foundation.h>
#import "TNCAuthWebViewDelegate.h"

@interface TNCPreferenceWindowDelegate : NSObject <NSWindowDelegate>

@property (weak) IBOutlet NSWindow *authWebViewWindow;
@property (weak) TNCAuthWebViewDelegate *authWebViewDelegate;
@property (weak) IBOutlet WebView *authWebView;

- (IBAction)logButtonPress:(id)sender;

- (BOOL)windowShouldClose:(id)sender;
- (void)windowWillClose:(NSNotification *)notification;

@end
