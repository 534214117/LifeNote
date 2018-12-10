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

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTabBar];
}

- (void)setupTabBar {
    NSArray <CustomNavigationController *>*controllers = @[[[CustomNavigationController alloc] initWithRootViewController:[[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil]],
                                                           [[CustomNavigationController alloc] initWithRootViewController:[[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil]],
                                                           [[CustomNavigationController alloc] initWithRootViewController:[[AccountViewController alloc] initWithNibName:@"AccountViewController" bundle:nil]]];
    
    for (int i = 0; i < controllers.count; i++) {
        UIViewController *vc = controllers[i].childViewControllers[0];
        vc.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"item_%d", i + 1]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"item_%d_s", i + 1]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    self.viewControllers = controllers;
}

@end
