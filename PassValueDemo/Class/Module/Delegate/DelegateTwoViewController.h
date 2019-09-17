//
//  InstanceTwoViewController.h
//  PassValueDemo
//
//  Created by 李晓龙 on 2019/9/16.
//  Copyright © 2019 LXL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 定义协议
@protocol PassValueDelegate <NSObject>
// 协议方法
-(void)passValue:(NSString *)str;

@end

@interface DelegateTwoViewController : UIViewController
@property(strong,nonatomic) UITextField *textField;
@property(strong,nonatomic) UIButton *btnBack;

// 声明代理协议
@property (weak) id<PassValueDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
