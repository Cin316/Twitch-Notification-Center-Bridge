//
//  TNCTwitchAPIRequester.h
//  Twitch Notification Center Bridge
//
//  Created by Nicholas Reichert on 8/15/14.
//  Copyright (c) 2014 Nicholas Reichert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNCTwitchAPIRequester : NSObject <NSURLSessionDataDelegate>

@property NSString *authKey;
@property NSMutableData *userData;
@property NSString *username;
@property NSURLSession *session;

- (id)initWithKey:(NSString *)key;

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error;
- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data;

@end
