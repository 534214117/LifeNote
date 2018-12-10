//
//  CustomTabBarController.m
//  LifeNote
//
//  Created by 第一反应 on 2018/12/10.
//  Copyright © 2018 Sonia. All rights reserved.
//

#import "CustomTabBarController.h"
#import "CustomNavigationController.h"
#import "HomeViewController.h"
#import "MapViewController.h"
#import "AccountViewController.h"
#import "MenuViewController.h"

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTabBar];
}

- (void)setupTabBar {
    RESideMenu *sideMenuViewController = [[RESideMenu alloc] initWithContentViewController:[[CustomNavigationController alloc] initWithRootViewController:[[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil]]
                               leftMenuViewController:[[CustomNavigationController alloc] initWithRootViewController:[[MenuViewController alloc] initWithNibName:@"MenuViewController" bundle:nil]]
                              rightMenuViewController:nil];
    sideMenuViewController.backgroundImage = [UIImage imageNamed:@"LaunchScreenImage"];
    
    NSArray *controllers = @[sideMenuViewController,
                             [[CustomNavigationController alloc] initWithRootViewController:[[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil]],
                             [[CustomNavigationController alloc] initWithRootViewController:[[AccountViewController alloc] initWithNibName:@"AccountViewController" bundle:nil]]];
    
    for (int i = 0; i < controllers.count; i++) {
        if (i == 0) {
            RESideMenu *sideMenuViewController = controllers[i];
            sideMenuViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[[UIImage imageNamed:[NSString stringWithFormat:@"item_%d", i + 1]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:[NSString stringWithFormat:@"item_%d_s", i + 1]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        }
        else {
            CustomNavigationController *nav = controllers[i];
            nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[[UIImage imageNamed:[NSString stringWithFormat:@"item_%d", i + 1]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:[NSString stringWithFormat:@"item_%d_s", i + 1]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        }
    }
    
    self.viewControllers = controllers;
}

@end
