//
//  HomeViewController.m
//  LifeNote
//
//  Created by 第一反应 on 2018/12/10.
//  Copyright © 2018 Sonia. All rights reserved.
//

#import "HomeViewController.h"
#import <VBFPopFlatButton.h>

@interface HomeViewController () <RESideMenuDelegate>

@property (strong, nonatomic) VBFPopFlatButton *menuButton;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNav];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    RESideMenu *sideMenuViewController = (RESideMenu *)self.parentViewController.parentViewController;
    sideMenuViewController.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    RESideMenu *sideMenuViewController = (RESideMenu *)self.parentViewController.parentViewController;
    sideMenuViewController.delegate = nil;
}

- (void)setupNav {
    self.navigationItem.title = InternationalString(@"TabBarTitle1");
    self.navigationController.navigationBarHidden = YES;
    [UIFont setupDefaultNavTitle:self];
    self.menuButton = [[VBFPopFlatButton alloc] initWithFrame:CGRectMake(20, 40, 24, 25) buttonType:buttonMenuType buttonStyle:buttonPlainStyle animateToInitialState:YES];
    [self.menuButton setTintColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [self.menuButton addTarget:self action:@selector(leftMenuControl:) forControlEvents:UIControlEventTouchUpInside];
    self.menuButton.lineThickness = 2;
    [self.view addSubview:self.menuButton];
}

- (void)leftMenuControl:(VBFPopFlatButton *)sender {
    [sender setCurrentButtonType:buttonCloseType];
    RESideMenu *sideMenuViewController = (RESideMenu *)self.parentViewController.parentViewController;
    [sideMenuViewController presentLeftMenuViewController];
}

- (void)sideMenu:(RESideMenu *)sideMenu willShowMenuViewController:(UIViewController *)menuViewController {
    
}

- (void)sideMenu:(RESideMenu *)sideMenu willHideMenuViewController:(UIViewController *)menuViewController {
    [self.menuButton setCurrentButtonType:buttonMenuType];
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
