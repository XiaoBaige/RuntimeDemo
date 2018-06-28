//
//  main.m
//  Coding
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.创建对象
        People *p = [[People alloc] init];
        p.name=@"蜗牛";
        p.height=1.83;
        
        //2.获取文件路径
        NSString *docPath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
        NSString *path=[docPath stringByAppendingPathComponent:@"person.archiver"];
        NSLog(@"path=%@",path);
        
        //3.将自定义的对象保存到文件中，调用NSKeyedArchiver的工厂方法 archiveRootObject: toFile: 方法
        [NSKeyedArchiver archiveRootObject:p toFile:path];
        
        
        //2.从文件中读取对象，解档对象就调用NSKeyedUnarchiver的一个工厂方法 unarchiveObjectWithFile: 即可。
        People * person = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        if (person) {
            NSLog(@"%@,%d,%.1f", person.name, person.age, person.height);
        }
     
    }
    return 0;
}
