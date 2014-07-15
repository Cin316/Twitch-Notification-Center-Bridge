//
//  TNCPreferenceWindowDelegate.h
//  Twitch Notification Center Bridge
//
//  Created by Nicholas Reichert on 7/14/14.
//  Copyright (c) 2014 Nicholas Reichert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNCPreferenceWindowDelegate : NSObject <NSWindowDelegate>

- (BOOL)windowShouldClose:(id)sender;
- (void)windowWillClose:(NSNotification *)notification;

@end
