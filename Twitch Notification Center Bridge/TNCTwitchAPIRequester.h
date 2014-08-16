//
//  TNCTwitchAPIRequester.h
//  Twitch Notification Center Bridge
//
//  Created by Nicholas Reichert on 8/15/14.
//  Copyright (c) 2014 Nicholas Reichert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNCTwitchAPIRequester : NSObject

@property NSString* authKey;

- (id)initWithKey:(NSString *)key;

- (NSString*)username;

@end
