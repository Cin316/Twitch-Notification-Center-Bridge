//
//  TNCTwitchAPIRequester.m
//  Twitch Notification Center Bridge
//
//  Created by Nicholas Reichert on 8/15/14.
//  Copyright (c) 2014 Nicholas Reichert. All rights reserved.
//

#import "TNCTwitchAPIRequester.h"

@implementation TNCTwitchAPIRequester

- (id)initWithKey:(NSString *)key{
    self = [super init];
    if (self) {
        self.authKey = key;
    }
    return self;
}

- (NSString*)username{
    NSString *token = [NSString stringWithFormat:@"https://api.twitch.tv/kraken/user?oauth_token=%@", self.authKey];
    NSURL *url = [NSURL URLWithString:token];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    //runRequest urlRequest.
    //Process output for username.
    return nil;
}

+ (NSString*)runRequest:(NSURLRequest *)request{
    NSURLSession *session = [NSURLSession sessionWithConfiguration:nil];
    //Figure out how to get data from URL.
    //- (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler
}

@end
