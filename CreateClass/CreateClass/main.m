//
//  main.m
//  动态创建类和对象
//
//  Created by 都兴忱 on 2018/6/21.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "MyClass.h"


void imp_submethod1(id self, SEL _cmd) {
    NSLog(@"This objcet is %p", self);
    NSLog(@"Class is %@, super class is %@", [self class], [self superclass]);
    Class currentClass = [self class];
    for (int i = 0; i < 4; i++) {
        NSLog(@"Following the isa pointer %d times gives %p", i, currentClass);
        currentClass = objc_getClass((__bridge void *)currentClass);
    }
    NSLog(@"NSObject's class is %p", [NSObject class]);
    NSLog(@"NSObject's meta class is %p", objc_getClass((__bridge void *)[NSObject class]));
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //动态创建类
        Class cls = objc_allocateClassPair(MyClass.class, "MySubClass", 0);
        class_addMethod(cls, @selector(submethod1), (IMP)imp_submethod1, "v@:");
        class_replaceMethod(cls, @selector(method1), (IMP)imp_submethod1, "v@:");
        class_addIvar(cls, "_ivar1", sizeof(NSString *), log(sizeof(NSString *)), "i");
        objc_property_attribute_t type = {"T", "@\"NSString\""};
        objc_property_attribute_t ownership = { "C", "" };
        objc_property_attribute_t backingivar = { "V", "_ivar1"};
        objc_property_attribute_t attrs[] = {type, ownership, backingivar};
        class_addProperty(cls, "property2", attrs, 3);
        objc_registerClassPair(cls);
        id instance = [[cls alloc] init];
        [instance performSelector:@selector(submethod1)];
        [instance performSelector:@selector(method1)];
        
        //动态创建对象
        id theObject = class_createInstance(NSString.class, sizeof(unsigned));
        
        id str1 = [theObject init];
        NSLog(@"%@", [str1 class]);
        id str2 = [[NSString alloc] initWithString:@"test"];
        NSLog(@"%@", [str2 class]);
    }
    return 0;
}


