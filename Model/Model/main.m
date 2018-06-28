//
//  main.m
//  Model
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = @{
                               @"name" : @"苍井空",
                               @"age"  : @18,
                               @"occupation" : @"老师",
                               @"nationality" : @"日本"
                               };
        
        // 字典转模型
        People *cangTeacher = [[People alloc] initWithDictionary:dict];
        NSLog(@"热烈欢迎，从%@远道而来的%@岁的%@%@",cangTeacher.nationality,cangTeacher.age,cangTeacher.name,cangTeacher.occupation);
        
        // 模型转字典
        NSDictionary *covertedDict = [cangTeacher covertToDictionary];
        NSLog(@"%@",covertedDict);
    }
    return 0;
}
