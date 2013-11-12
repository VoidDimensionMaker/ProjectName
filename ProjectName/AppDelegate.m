//
//  AppDelegate.m
//  ProjectName
//
//  Created by VoidDimensionMaker on 11.11.13.
//  Copyright (c) 2013 vdm. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (ViewController *)viewController {
    if (!_viewController) {
        _viewController = [[ViewController alloc] init];
    }
    return _viewController;
}

- (UINavigationController *)navigationController {
    if (!_navigationController) {
        _navigationController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    }
    return _navigationController;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor blueColor];
    self.navigationController.navigationBar.translucent = NO;
    self.window.rootViewController = self.navigationController;
    //self.window.rootViewController = self.viewController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
