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
        //Set variables to parameter input.
        self.authKey = key;
        
        //Initialize variables.
        self.userData = [NSMutableData dataWithCapacity:10];
        self.username = [NSString string];
        
        //Set up session.
        self.session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:self delegateQueue:nil];
        
        //Request username.
        NSURL *usernameURL = [NSURL URLWithString: [NSString stringWithFormat:@"https://api.twitch.tv/kraken/user?oauth_token=%@", self.authKey]];
        NSURLSessionDataTask *usernameURLRequest = [self.session dataTaskWithURL:usernameURL];
        [usernameURLRequest resume];//Starts task.
        
    }
    return self;
}

- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data{
    //If this is a user request...
    if ([[[[dataTask originalRequest] URL] absoluteString] hasPrefix:@"https://api.twitch.tv/kraken/user?"]) {
        [self.userData appendData:data];
    }
    
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error{
    //If this is a user request...
    if ([[[[task originalRequest] URL] absoluteString] hasPrefix:@"https://api.twitch.tv/kraken/user?"]) {
        //Convert userData to NSString and store in username.
        self.username = [[NSString alloc] initWithData:self.userData encoding:NSUTF8StringEncoding];
        
        //Clears userData.
        self.userData = [NSData data];
        //TODO parse JSON for username.
    }
}

@end
