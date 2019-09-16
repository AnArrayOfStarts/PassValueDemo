//
//  ShareInstance.h
//  PassValueDemo
//
//  Created by 李晓龙 on 2019/9/16.
//  Copyright © 2019 LXL. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShareInstance : NSObject

/// str
@property (nonatomic, strong) NSString *str;

+(instancetype)ShareInstance;

@end

NS_ASSUME_NONNULL_END
