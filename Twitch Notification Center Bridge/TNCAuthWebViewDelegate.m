//
//  TNCAuthWebViewDelegate.m
//  Twitch Notification Center Bridge
//

#import "TNCAuthWebViewDelegate.h"

@implementation TNCAuthWebViewDelegate

- (id)initWithWebView:(WebView *)webView{
    self = [super init];
    if (self) {
        self.authWebView = webView;
        [self.authWebView setResourceLoadDelegate:self];
    }
    return self;
}
- (NSURLRequest *)webView:(WebView *)sender
                 resource:(id)identifier
          willSendRequest:(NSURLRequest *)request
         redirectResponse:(NSURLResponse *)redirectResponse
           fromDataSource:(WebDataSource *)dataSource{
    
    NSString* currentURL = request.URL.absoluteString;
    if([currentURL hasPrefix:@"http://localhost/#access_token="]){
        NSString *accessToken = [[currentURL componentsSeparatedByString:@"access_token="] lastObject];
        NSLog(@"%@", accessToken);
        //TODO Store access token and display success message.
    }
    //Continue loading webpage unmodified.
    return request;
}

- (BOOL)windowShouldClose:(id)sender{
    //Yes, window should close.
    return YES;
}

@end
