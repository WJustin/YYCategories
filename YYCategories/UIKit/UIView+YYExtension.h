//
//  UIView+YYExtension.h
//  YYCategories
//
//  Created by Justin.wang on 2018/5/26.
//  Copyright © 2018年 ibireme. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>

@interface UIView (YYExtension)

- (void)addTapGestureWithTarget:(id)target
                         action:(SEL)action;
- (void)addTapGestureWithTarget:(id)target
                         action:(SEL)action
                        viewTag:(NSInteger)viewTag;
- (void)addTapGestureWithTarget:(id)target
                         action:(SEL)action
           numberOfTapsRequired:(NSUInteger)numberOfTapsRequired;

@property (nonatomic, strong, readonly) MASViewAttribute *yy_left;
@property (nonatomic, strong, readonly) MASViewAttribute *yy_top;
@property (nonatomic, strong, readonly) MASViewAttribute *yy_right;
@property (nonatomic, strong, readonly) MASViewAttribute *yy_bottom;

@end
