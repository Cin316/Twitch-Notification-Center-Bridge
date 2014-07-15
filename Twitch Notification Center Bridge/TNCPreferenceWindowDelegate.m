//
//  TNCPreferenceWindowDelegate.m
//  Twitch Notification Center Bridge
//
//  Created by Nicholas Reichert on 7/14/14.
//  Copyright (c) 2014 Nicholas Reichert. All rights reserved.
//

#import "TNCPreferenceWindowDelegate.h"

@implementation TNCPreferenceWindowDelegate

- (BOOL)windowShouldClose:(id)sender{
    //Yes, window should close.
    return YES;
}

- (void)windowWillClose:(NSNotification *)notification{
    
}

@end
