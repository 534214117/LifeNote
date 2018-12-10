//
//  HomeViewController.m
//  LifeNote
//
//  Created by 第一反应 on 2018/12/10.
//  Copyright © 2018 Sonia. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNav];
}

- (void)setupNav {
    self.navigationItem.title = InternationalString(@"TabBarTitle1");
    self.navigationController.navigationBarHidden = YES;
    [UIFont setupDefaultNavTitle:self];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
