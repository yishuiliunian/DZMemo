//
//  DZMemoTest.m
//  DZMemo
//
//  Created by stonedong on 16/1/1.
//  Copyright © 2016年 stonedong. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DZMemo.h"


@interface TestObject : NSObject
@property (nonatomic, strong) NSString* name;
@end

@implementation TestObject



@end

@interface DZMemoTest : XCTestCase

@end

@implementation DZMemoTest

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    TestObject* tob = [TestObject new];
    tob.name = @"a";
    DZMemo* memo = [DZMemo new];
    [memo memoEnv:tob key:@"name"];
    
    tob.name = @"sss";
    
    XCTAssertEqual(tob.name, @"sss", @"name is assign invalid");
    
    [memo recover];
    
    XCTAssertEqual(tob.name, @"a", @"name is assign invalid");
 
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
