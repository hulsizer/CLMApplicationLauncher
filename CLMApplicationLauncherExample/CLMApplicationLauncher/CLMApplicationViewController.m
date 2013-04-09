// CLMApplicationViewController.m
// 
// Copyright (c) 2013 Andrew Hulsizer
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "CLMApplicationViewController.h"
#import "CLMSplashScreen.h"
#import "CLMApplicationState.h"

@interface CLMApplicationViewController () <CLMSplashScreenDelegate>

@property (nonatomic, strong) CLMSplashScreen *splashScreen;
@property (nonatomic, strong) CLMApplicationState *state;
@property (nonatomic, strong) UIViewController *mainViewController;
@end

@implementation CLMApplicationViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.view setBackgroundColor:[UIColor blackColor]];
    self.state = [[CLMApplicationState alloc] init];
    self.splashScreen = [[CLMSplashScreen alloc] initWithFrame:self.view.bounds];
    self.splashScreen.delegate = self;
    [self.view addSubview:self.splashScreen];
    
    if (self.launchBlock)
    {
        self.launchBlock();
    }
   
    if (self.completionBlock)
    {
        self.completionBlock();
    }
 
    self.state.applicationLaunchFinished = YES;
}

- (void)splashScreenCanBeRemoved:(CLMSplashScreen *)splashScreen
{
    self.state.splashScreenFinished = YES;
    
    [self removeSplashScreen];
}

- (void)removeSplashScreen
{
    [UIView animateWithDuration:1 animations:^{
        [self.splashScreen setAlpha:0.0];
    } completion:^(BOOL finished) {
        [self.splashScreen removeFromSuperview];
    }];
}
@end
