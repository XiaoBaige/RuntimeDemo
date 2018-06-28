//
//  People+Associated.m
//  Associated
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import "People+Associated.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation People (Associated)

- (void)setAssociatedBust:(NSNumber *)associatedBust
{
    objc_setAssociatedObject(self, @selector(associatedBust), associatedBust, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSNumber *)associatedBust
{
   return objc_getAssociatedObject(self, @selector(associatedBust));
}

- (void)setAssociatedCallBack:(CodingCallBack)callback {
    objc_setAssociatedObject(self, @selector(associatedCallBack), callback, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CodingCallBack)associatedCallBack {
    return objc_getAssociatedObject(self, @selector(associatedCallBack));
}

@end
