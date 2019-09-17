//
//  AttributeTwoViewController.h
//  PassValueDemo
//
//  Created by 李晓龙 on 2019/9/16.
//  Copyright © 2019 LXL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlockTwoViewController : UIViewController

@property(strong,nonatomic) UITextField *textField;
@property(strong,nonatomic) UIButton *btnBack;

@property(copy,nonatomic) void (^block)(NSString *);


@end

NS_ASSUME_NONNULL_END
