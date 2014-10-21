//
//  UIButton+Blocks.h
//  HW_Runtime
//
//  Created by Alexander on 21.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Blocks)

// поведение как у [self addTarget:<#(id)#> action:<#(SEL)#> forControlEvents:<#(UIControlEvents)#>]

- (void)addHandler:(void(^)(UIButton *))handler forControlEvents:(UIControlEvents)controlEvents;

@end
