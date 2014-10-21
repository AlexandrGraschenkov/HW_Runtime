//
//  UIButton+Blocks.m
//  HW_Runtime
//
//  Created by Alexander on 21.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "UIButton+Blocks.h"
#import <objc/runtime.h>


@implementation UIButton (Blocks)

- (void)addHandler:(void(^)(UIButton *))handler forControlEvents:(UIControlEvents)controlEvents
{
}

@end
