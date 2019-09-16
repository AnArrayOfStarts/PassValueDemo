//
//  InstanceTwoViewController.m
//  PassValueDemo
//
//  Created by 李晓龙 on 2019/9/16.
//  Copyright © 2019 LXL. All rights reserved.
//

#import "InstanceTwoViewController.h"
#import "ShareInstance.h"

@interface InstanceTwoViewController ()

@end

@implementation InstanceTwoViewController

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
    [ShareInstance  ShareInstance].str = self.textField.text;
    [self dismissViewControllerAnimated:YES completion:nil];
}


// 懒加载
-(UITextField *)textField{
    if (!_textField) {
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
        _textField.backgroundColor = [UIColor yellowColor];
        _textField.textColor = [UIColor blackColor];
        _textField.borderStyle = UITextBorderStyleLine;
        // 单利正向传值
        _textField.text = [ShareInstance ShareInstance].str;
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



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
