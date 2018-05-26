//
//  UIView+YYExtension.m
//  YYCategories
//
//  Created by Justin.wang on 2018/5/26.
//  Copyright © 2018年 ibireme. All rights reserved.
//

#import "UIView+YYExtension.h"

@implementation UIView (YYExtension)

- (void)yy_addTapGestureWithTarget:(id)target action:(SEL)action {
    self.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tapGesture =
        [[UITapGestureRecognizer alloc] initWithTarget:target
                                                action:action];
    [self addGestureRecognizer:tapGesture];
}

- (void)yy_addTapGestureWithTarget:(id)target
                            action:(SEL)action
                           viewTag:(NSInteger)viewTag {
    [self setTag:viewTag];
    [self yy_addTapGestureWithTarget:target action:action];
}

- (void)yy_addTapGestureWithTarget:(id)target
                            action:(SEL)action
              numberOfTapsRequired:(NSUInteger)numberOfTapsRequired {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture =
        [[UITapGestureRecognizer alloc] initWithTarget:target
                                                action:action];
    tapGesture.numberOfTapsRequired = numberOfTapsRequired;
    [self addGestureRecognizer:tapGesture];
}


- (MASViewAttribute *)yy_left {
    if (@available(iOS 11.0, *)) {
        return [[MASViewAttribute alloc] initWithView:self
                                                 item:self.safeAreaLayoutGuide
                                      layoutAttribute:NSLayoutAttributeLeft];
    } else {
        return [[MASViewAttribute alloc] initWithView:self
                                      layoutAttribute:NSLayoutAttributeLeft];
    }
}

- (MASViewAttribute *)yy_top {
    if (@available(iOS 11.0, *)) {
        return [[MASViewAttribute alloc] initWithView:self
                                                 item:self.safeAreaLayoutGuide
                                      layoutAttribute:NSLayoutAttributeTop];
    } else {
        return [[MASViewAttribute alloc] initWithView:self
                                      layoutAttribute:NSLayoutAttributeTop];
    }
}

- (MASViewAttribute *)yy_right {
    if (@available(iOS 11.0, *)) {
        return [[MASViewAttribute alloc] initWithView:self
                                                 item:self.safeAreaLayoutGuide
                                      layoutAttribute:NSLayoutAttributeRight];
    } else {
        return [[MASViewAttribute alloc] initWithView:self
                                      layoutAttribute:NSLayoutAttributeRight];
    }
}

- (MASViewAttribute *)yy_bottom {
    if (@available(iOS 11.0, *)) {
        return [[MASViewAttribute alloc] initWithView:self
                                                 item:self.safeAreaLayoutGuide
                                      layoutAttribute:NSLayoutAttributeBottom];
    } else {
        return [[MASViewAttribute alloc] initWithView:self
                                      layoutAttribute:NSLayoutAttributeBottom];
    }
}

@end
