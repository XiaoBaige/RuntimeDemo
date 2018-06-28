//
//  main.m
//  Associated
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
#import "People+Associated.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        People *cangTeacher = [[People alloc] init];
        cangTeacher.associatedBust = @(90);
        cangTeacher.associatedCallBack = ^(){
            
            NSLog(@"苍老师要写代码了！");
            
        };
        cangTeacher.associatedCallBack();
    }
    return 0;
}
