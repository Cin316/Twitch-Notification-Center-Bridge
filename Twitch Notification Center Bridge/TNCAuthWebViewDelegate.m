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
        [self.authWebView setFrameLoadDelegate:self];
    }
    return self;
}

- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame*)frame
{
    if(frame == [sender mainFrame]) {//A new page has been loaded.
        NSString* currentURL = frame.dataSource.request.URL.absoluteString;
        //Add implementation.
    }
}

- (BOOL)windowShouldClose:(id)sender{
    //Yes, window should close.
    return YES;
}

@end
