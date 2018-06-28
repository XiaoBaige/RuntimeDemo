//
//  People+Associated.h
//  Associated
//
//  Created by 都兴忱 on 2018/6/27.
//  Copyright © 2018年 都兴忱. All rights reserved.
//

#import "People.h"

typedef void (^CodingCallBack)();

@interface People (Associated)

@property (nonatomic, strong) NSNumber *associatedBust; // 胸围
@property (nonatomic, copy) CodingCallBack associatedCallBack;  // 写代码

@end
