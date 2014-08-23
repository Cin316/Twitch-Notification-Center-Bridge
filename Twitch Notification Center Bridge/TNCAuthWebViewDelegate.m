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
        NSLog(@"%@", currentURL);
        NSString *params = [[currentURL componentsSeparatedByString:@"access_token="] lastObject];
        NSString *accessToken = [[params componentsSeparatedByString:@"&"] objectAtIndex:0];
        NSLog(@"%@", accessToken);
        //TODO Store access token and display success message.
        self.twitch = [[TNCTwitchAPIRequester alloc] initWithKey:accessToken];
        //Maybe store access token in keychain.
        //Update GUI in 1 second.
        //TODO Fix warning below.
        [self performSelector:@selector(updateUserData) withObject:nil afterDelay:1.0];
    }
    //Continue loading webpage unmodified.
    return request;
}

- (BOOL)windowShouldClose:(id)sender{
    //Yes, window should close.
    return YES;
}

- (void)updateUserData{
    
    if (self.twitch.userDataLoaded){
        //Add username to GUI
        
    }else{
        //Call self again in 1 second.
        [self performSelector:@selector(updateUserData) withObject:nil afterDelay:1.0];
    }
    
};

@end
