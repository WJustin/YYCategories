//
//  UIApplication+YYHierarchy.m
//  YYCategories
//
//  Created by Justin.wang on 2018/5/26.
//  Copyright © 2018年 ibireme. All rights reserved.
//

#import "UIApplication+YYHierarchy.h"

@implementation UIApplication (YYHierarchy)

- (UINavigationController *)yy_topNavController {
    UIViewController *vc = [self yy_topViewController];
    if ([vc isKindOfClass:[UINavigationController class]]) {
        return (UINavigationController *)vc;
    } else {
        if ([vc.navigationController isKindOfClass:[UINavigationController class]]) {
            return vc.navigationController;
        } else {
            return nil;
        }
    }
}


- (UIViewController *)yy_topViewController {
    UIWindow *window = self.delegate.window;
    if (!window) {
        return nil;
    }
    for (UIView *subView in [window subviews]) {
        UIResponder *responder = [subView nextResponder];
        if ([responder isEqual:window]) {
            if ([[subView subviews] count]) {
                UIView *subSubView = [subView subviews].firstObject;
                responder = [subSubView nextResponder];
            }
        }
        if([responder isKindOfClass:[UIViewController class]]) {
            return [self yy_topViewController:(UIViewController *) responder];
        }
    }
    return nil;
}

- (UIViewController *)yy_topViewController:(UIViewController *)controller {
    BOOL isPresenting = NO;
    do {
        UIViewController *presented = [controller presentedViewController];
        isPresenting = (presented != nil);
        if(isPresenting) {
            controller = presented;
        }
    } while (isPresenting);
    
    if ([controller isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabController = (UITabBarController *)controller;
        return [[tabController viewControllers] objectAtIndex:tabController.selectedIndex];
    }
    return controller;
}


@end
