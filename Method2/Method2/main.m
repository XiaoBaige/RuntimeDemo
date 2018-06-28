//
//  main.m
//  Method2
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import "People.h"
#import "Bird.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Bird *bird = [[Bird alloc] init];
        bird.name = @"小小鸟";
        
        ((void (*)(id, SEL))objc_msgSend)((id)bird, @selector(sing));
    }
    return 0;
}
