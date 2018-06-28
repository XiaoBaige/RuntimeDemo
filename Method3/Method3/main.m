//
//  main.m
//  Method3
//
//  Created by 都兴忱 on 2018/6/28.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
#import <objc/runtime.h>
#import <objc/message.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        People *cangTeacher = [[People alloc] init];
        
        ((void(*)(id, SEL)) objc_msgSend)((id)cangTeacher, @selector(sing));
    }
    return 0;
}
