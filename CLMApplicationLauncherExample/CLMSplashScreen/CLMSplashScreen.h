//
//  CLMSplashScreen.h
//  CLMApplicationLauncherExample
//
//  Created by Andrew Hulsizer on 4/7/13.
//  Copyright (c) 2013 Andrew Hulsizer. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CLMSplashScreenDelegate;

@interface CLMSplashScreen : UIView

@property (nonatomic, assign) id<CLMSplashScreenDelegate> delegate;

@end

@protocol CLMSplashScreenDelegate <NSObject>

@optional
- (void)splashScreenCanBeRemoved:(CLMSplashScreen*)splashScreen;

@end