//
//  MyClass.h
//  Objective-C Runtime 运行时之一：类与对象
//
//  Created by 都兴忱 on 2018/6/21.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject  <NSCopying, NSCoding>

@property (nonatomic, strong) NSArray *array;
@property (nonatomic, copy) NSString *string;
- (void)method1;
- (void)method2;
+ (void)classMethod1;

@end
