//
//  CLMApplicationState.m
//  CLMApplicationLauncherExample
//
//  Created by Andrew Hulsizer on 4/7/13.
//  Copyright (c) 2013 Andrew Hulsizer. All rights reserved.
//

#import "CLMApplicationState.h"

@implementation CLMApplicationState

- (id)init
{
    self = [super init];
    if (self)
    {
        _splashScreenFinished = NO;
        _applicationLaunchFinished = NO;
        _loggedIn = NO;
    }
    return self;
}
@end
