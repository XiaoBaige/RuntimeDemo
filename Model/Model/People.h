//
//  People.h
//  Model
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject

@property (nonatomic, copy) NSString *name; // 姓名
@property (nonatomic, strong) NSNumber *age; // 年龄
@property (nonatomic, copy) NSString *occupation; // 职业
@property (nonatomic, copy) NSString *nationality; // 国籍

// 生成model
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

// 转换成字典
- (NSDictionary *)covertToDictionary;

@end
