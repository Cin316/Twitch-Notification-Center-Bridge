//
//  TNCPreferenceWindowDelegate.m
//  Twitch Notification Center Bridge
//

#import "TNCPreferenceWindowDelegate.h"

@implementation TNCPreferenceWindowDelegate

- (IBAction)logButtonPress:(id)sender{
    //Open webView.
    [self.authWebViewWindow makeKeyAndOrderFront:nil];
    //Load twitch login URL.
    NSURL *url = [NSURL URLWithString:@"https://api.twitch.tv/kraken/oauth2/authorize?response_type=token&client_id=myquwg33khcxf7bh65j7kez3rr72v43&redirect_uri=http://localhost&scope=user_read+user_subscriptions"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.authWebView.mainFrame loadRequest:urlRequest];
}

- (BOOL)windowShouldClose:(id)sender{
    //Yes, window should close.
    return YES;
}

- (void)windowWillClose:(NSNotification *)notification{
    
}

@end
