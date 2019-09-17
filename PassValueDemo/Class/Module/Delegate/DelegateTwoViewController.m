//
//  InstanceTwoViewController.m
//  PassValueDemo
//
//  Created by 李晓龙 on 2019/9/16.
//  Copyright © 2019 LXL. All rights reserved.
//

#import "DelegateTwoViewController.h"


@interface DelegateTwoViewController ()

@end

@implementation DelegateTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self config];
}

-(void)config{
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.textField];
    [self.view addSubview:self.btnBack];
}

-(void)clickBack{

    // 通过代理传值
    [self.delegate passValue:_textField.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


// 懒加载
-(UITextField *)textField{
    if (!_textField) {
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
        _textField.backgroundColor = [UIColor yellowColor];
        _textField.textColor = [UIColor blackColor];
        _textField.borderStyle = UITextBorderStyleLine;
        
        
    }
    return _textField;
}

-(UIButton *)btnBack{
    if (!_btnBack) {
        _btnBack = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 200, 50)];
        [_btnBack setTitle:@"返回界面1" forState:(UIControlStateNormal)];
        [_btnBack setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
        [_btnBack setBackgroundColor:[UIColor blueColor]];
        [_btnBack addTarget:self action:@selector(clickBack) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _btnBack;
}

@end
