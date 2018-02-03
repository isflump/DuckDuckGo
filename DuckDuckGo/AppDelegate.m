//
//  AppDelegate.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "AppDelegate.h"
#import "HomePageViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setupHomePage];
    return YES;
}

- (void)setupHomePage {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    HomePageViewController *homePageViewController = [[HomePageViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:homePageViewController];
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
}

@end
