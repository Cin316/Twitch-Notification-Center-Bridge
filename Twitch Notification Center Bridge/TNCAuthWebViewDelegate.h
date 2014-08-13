//
//  TNCAuthWebViewDelegate.h
//  Twitch Notification Center Bridge
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface TNCAuthWebViewDelegate : NSObject <NSWindowDelegate>

@property (weak) WebView *authWebView;

- (id)initWithWebView:(WebView *)webView;

- (NSURLRequest *)webView:(WebView *)sender
                 resource:(id)identifier
          willSendRequest:(NSURLRequest *)request
         redirectResponse:(NSURLResponse *)redirectResponse
           fromDataSource:(WebDataSource *)dataSource;

- (BOOL)windowShouldClose:(id)sender;

@end
