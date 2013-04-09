//
//  CLMSplashScreen.m
//  CLMApplicationLauncherExample
//
//  Created by Andrew Hulsizer on 4/7/13.
//  Copyright (c) 2013 Andrew Hulsizer. All rights reserved.
//

#import "CLMSplashScreen.h"

@interface CLMSplashScreen ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation CLMSplashScreen

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)layoutSubviews
{
    if (!self.imageView)
    {
        self.imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        self.imageView.image = [UIImage imageNamed:@"Splash"];
        [self addSubview:self.imageView];
    }
    [self.delegate splashScreenCanBeRemoved:self];
}
@end
