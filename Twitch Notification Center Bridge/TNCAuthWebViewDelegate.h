//
//  TNCAuthWebViewDelegate.h
//  Twitch Notification Center Bridge
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface TNCAuthWebViewDelegate : NSObject <NSWindowDelegate>

@property (strong) IBOutlet WebView *authWebView;

- (BOOL)windowShouldClose:(id)sender;

@end
