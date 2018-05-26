//
//  UIApplication+YYHierarchy.h
//  YYCategories
//
//  Created by Justin.wang on 2018/5/26.
//  Copyright © 2018年 ibireme. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (YYHierarchy)

- (UINavigationController *)yy_topNavController;

- (UIViewController *)yy_topViewController;

@end
