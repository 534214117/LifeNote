//
//  UIFont+UIFontMore.m
//  LifeNote
//
//  Created by 第一反应 on 2018/12/10.
//  Copyright © 2018 Sonia. All rights reserved.
//

#import "UIFont+UIFontMore.h"

@implementation UIFont (UIFontMore)

+ (UIFont *)customFont:(CGFloat)size {
    return [UIFont fontWithName:@"DanielBold" size:size];
}

+ (void)setupDefaultNavTitle:(UIViewController *)vc {
    for (UIView *view in vc.navigationController.navigationBar.subviews) {
        if ([NSStringFromClass(view.classForCoder) isEqualToString:@"_UINavigationBarContentView"] ||
            [NSStringFromClass(view.classForCoder) isEqualToString:@"UINavigationItemView"]) {
            for (UIView *subView in view.subviews) {
                if ([subView isKindOfClass:[UILabel class]]) {
                    ((UILabel *)subView).font = [UIFont customFont:18];
                }
            }
        }
    }
}

@end
