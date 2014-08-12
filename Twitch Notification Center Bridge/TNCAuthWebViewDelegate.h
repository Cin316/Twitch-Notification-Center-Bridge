//
//  TNCAuthWebViewDelegate.h
//  Twitch Notification Center Bridge
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface TNCAuthWebViewDelegate : NSObject <NSWindowDelegate>

@property (weak) WebView *authWebView;

- (id)initWithWebView:(WebView *)webView;

- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame*)frame;

- (BOOL)windowShouldClose:(id)sender;

@end
