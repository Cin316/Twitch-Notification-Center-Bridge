//
//  TNCAuthWebViewDelegate.h
//  Twitch Notification Center Bridge
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import "TNCTwitchAPIRequester.h"
#import "TNCPreferenceWindowDelegate.h"

@interface TNCAuthWebViewDelegate : NSObject <NSWindowDelegate>

@property (weak) IBOutlet WebView *authWebView;
@property TNCTwitchAPIRequester *twitch;
@property (weak) IBOutlet TNCPreferenceWindowDelegate *preferenceWindowDelegate;

- (void)setup;

- (NSURLRequest *)webView:(WebView *)sender
                 resource:(id)identifier
          willSendRequest:(NSURLRequest *)request
         redirectResponse:(NSURLResponse *)redirectResponse
           fromDataSource:(WebDataSource *)dataSource;

- (BOOL)windowShouldClose:(id)sender;

- (void)updateUserData;

@end
