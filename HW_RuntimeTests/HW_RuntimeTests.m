//
//  HW_RuntimeTests.m
//  HW_RuntimeTests
//
//  Created by Alexander on 21.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MYTestRunner.h"
#import "UIButton+Blocks.h"

@interface ChildTestObj : MYTestRunner
@end

static int testCallsCount = 0;
@implementation ChildTestObj

- (void)testKfdsf
{
    testCallsCount += 1;
}

- (void)testFvdfd
{
    testCallsCount += 2;
}

- (void)notTest
{
    testCallsCount -= 100;
}

@end


@interface HW_RuntimeTests : XCTestCase
{
}
@end

@implementation HW_RuntimeTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testYourTestingClass {
    testCallsCount = 0;
    [MYTestRunner runAllTests];
    XCTAssert(testCallsCount == 3, @"Pass");
    [MYTestRunner runAllTests];
    XCTAssert(testCallsCount == 6, @"Pass");
}

- (void)testButtonExtension {
    UIButton *butt = [[UIButton alloc] init];
    __block NSInteger touchInsideCount = 0;
    [butt addHandler:^(UIButton *butt) {
        touchInsideCount += 1;
    } forControlEvents:UIControlEventTouchUpInside];
    [butt addHandler:^(UIButton *butt) {
        touchInsideCount += 2;
    } forControlEvents:UIControlEventTouchUpInside];
    
    [butt sendActionsForControlEvents:UIControlEventTouchUpInside];
    [butt sendActionsForControlEvents:UIControlEventTouchUpInside];
    
    XCTAssert(touchInsideCount == 6, @"Pass");
}

@end
