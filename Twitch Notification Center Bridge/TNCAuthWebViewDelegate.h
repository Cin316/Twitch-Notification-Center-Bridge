//
//  TNCAuthWebViewDelegate.h
//  Twitch Notification Center Bridge
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface TNCAuthWebViewDelegate : NSObject <NSWindowDelegate>

@property (weak) WebView *authWebView;

- (id)initWithWebView:(WebView *)webView;

- (void)webView:(WebView *)sender
        resource:(id)identifier
        didReceiveResponse:(NSURLResponse *)response
        fromDataSource:(WebDataSource *)dataSource;

- (BOOL)windowShouldClose:(id)sender;

@end
