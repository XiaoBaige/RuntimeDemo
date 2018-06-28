//
//  People.h
//  Attributity
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject
{
    NSString *_occupation;
    NSString *_nationality;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic) NSUInteger age;

- (NSDictionary *)allProperties;
- (NSDictionary *)allIvars;
- (NSDictionary *)allMethods;

@end
