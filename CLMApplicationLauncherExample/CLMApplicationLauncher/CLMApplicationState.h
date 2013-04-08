//
//  CLMApplicationState.h
//  CLMApplicationLauncherExample
//
//  Created by Andrew Hulsizer on 4/7/13.
//  Copyright (c) 2013 Andrew Hulsizer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLMApplicationState : NSObject

@property (nonatomic, assign) BOOL splashScreenFinished;
@property (nonatomic, assign) BOOL loggedIn;
@property (nonatomic, assign) BOOL applicationLaunchFinished;
@end
