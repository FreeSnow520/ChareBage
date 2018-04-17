//
//  TabbarSettings.h
//  StunnerBook
//
//  Created by 宇文学 on 2018/4/17.
//  Copyright © 2018年 孙雪峰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XFTabBarController.h"
#import "BaseViewController.h"
#import "XFNavigationController.h"
#import "XFSettingsViewController.h"
#import "XFEditingViewController.h"
#import "XFAllViewController.h"
@interface TabbarSettings : NSObject
@property (nonatomic, strong)XFTabBarController *tabBarController;
@property (nonatomic, strong) UIWindow *window;
@end
