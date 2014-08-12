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

- (void)webView:(WebView *)sender//TODO Make this metod detect when a new page is loaded, and see if that is the page for a successful login.
        resource:(id)identifier
        didReceiveResponse:(NSURLResponse *)response
        fromDataSource:(WebDataSource *)dataSource{
    NSLog(@"response.URL.absoluteString");//TODO Fix test logg.ing
}

- (BOOL)windowShouldClose:(id)sender{
    //Yes, window should close.
    return YES;
}

@end
