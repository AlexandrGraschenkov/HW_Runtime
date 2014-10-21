//
//  MYTestRunner.h
//  HW_Runtime
//
//  Created by Alexander on 21.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MYTestRunner : NSObject

// ищем все классы которые наследуются от MYTestRunner и выполняем все методы ОБЪЕКТА, которые начинаются на "test"

+ (void)runAllTests;

@end
