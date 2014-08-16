//
//  TNCAuthWebViewDelegate.h
//  Twitch Notification Center Bridge
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import "TNCTwitchAPIRequester.h"

@interface TNCAuthWebViewDelegate : NSObject <NSWindowDelegate>

@property (weak) WebView *authWebView;
@property TNCTwitchAPIRequester *twitch;

- (id)initWithWebView:(WebView *)webView;

- (NSURLRequest *)webView:(WebView *)sender
                 resource:(id)identifier
          willSendRequest:(NSURLRequest *)request
         redirectResponse:(NSURLResponse *)redirectResponse
           fromDataSource:(WebDataSource *)dataSource;

- (BOOL)windowShouldClose:(id)sender;

@end
