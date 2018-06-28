//
//  main.m
//  Method1
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        People *cangTeacher = [[People alloc] init];
        cangTeacher.name = @"苍老师";
        [cangTeacher sing];
    }
    return 0;
}
