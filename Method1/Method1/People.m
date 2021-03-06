//
//  People.m
//  Method1
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import "People.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation People

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    // 我们没有给People类声明sing方法，我们这里动态添加方法
    if ([NSStringFromSelector(sel) isEqualToString:@"sing"]) {
        class_addMethod(self, sel, (IMP)otherSing, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

void otherSing(id self, SEL cmd)
{
    NSLog(@"%@ 唱歌啦！",((People *)self).name);
}

@end
