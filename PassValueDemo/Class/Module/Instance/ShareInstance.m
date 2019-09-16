//
//  ShareInstance.m
//  PassValueDemo
//
//  Created by 李晓龙 on 2019/9/16.
//  Copyright © 2019 LXL. All rights reserved.
//

#import "ShareInstance.h"

@implementation ShareInstance



+(instancetype)ShareInstance{
    // 静态变量方法，每次都会读取上一次创建的值
    static ShareInstance *instance = nil;
    
    if (instance == nil) {
        instance = [ShareInstance new];
    }
    return instance;
}

@end
