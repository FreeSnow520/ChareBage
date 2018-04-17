//
//  TabbarSettings.m
//  StunnerBook
//
//  Created by 宇文学 on 2018/4/17.
//  Copyright © 2018年 孙雪峰. All rights reserved.
//

#import "TabbarSettings.h"

@implementation TabbarSettings

- (UIWindow *)window {
    if (_window == nil) {
        _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _window.rootViewController = self.tabBarController;
    }
    return _window;
}

- (XFTabBarController *)tabBarController {
    if (_tabBarController == nil) {
        _tabBarController = [[XFTabBarController alloc] init];
        [self customTabbar];
    }
    return _tabBarController;
}

- (void)customTabbar {
    NSArray * nameArray = @[
                            @"总修炼",
                            @"马上修炼",
                            ];
    
    NSArray * classNameArray = @[
                            @"XFAllViewController",
                            @"XFEditingViewController",
                                ];
    NSMutableArray * viewControllers = [NSMutableArray arrayWithCapacity:50];
    for (int i = 0; i < nameArray.count; i++) {
        BaseViewController * viewController = [[NSClassFromString(classNameArray[i]) alloc] init];
        XFNavigationController * nav = [[XFNavigationController alloc] initWithRootViewController:viewController];
        viewController.tabBarItem.title = nameArray[i];
        viewController.title = nameArray[i];
        viewController.view.backgroundColor = [UIColor colorWithRed: arc4random()%255/255.0f green:arc4random()%255/255.0f blue:arc4random()%255/255.0f alpha:1];
        [viewControllers addObject:nav];
        
    }
    _tabBarController.viewControllers = viewControllers;
}
@end
