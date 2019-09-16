//
//  InstanceOneViewController.m
//  PassValueDemo
//
//  Created by 李晓龙 on 2019/9/16.
//  Copyright © 2019 LXL. All rights reserved.
//

#import "UserDefaultsOneViewController.h"
#import "UserDefaultsTwoViewController.h"

@interface UserDefaultsOneViewController ()

@end

@implementation UserDefaultsOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self config];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.label.text = [[NSUserDefaults standardUserDefaults]objectForKey:@"NSUserDefaultsTwo"];
}

-(void)config{
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.view addSubview:self.label];
    [self.view addSubview:[self btn]];
    [self.view addSubview:self.btnBack];
}

-(void)clickJump{
    UserDefaultsTwoViewController *nsuserTwo = [UserDefaultsTwoViewController new];
    [[NSUserDefaults standardUserDefaults]setObject:@"NSUser--正常传值" forKey:@"NSUserDefaultsOne"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self presentViewController:nsuserTwo animated:YES completion:nil];
}

-(void)clickBack{
    [self dismissViewControllerAnimated:YES completion:nil];
}


// 懒加载
-(UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
        _label.backgroundColor = [UIColor yellowColor];
        _label.textColor = [UIColor blackColor];
    }
    return _label;
}

-(UIButton *)btn{
    if (!_btn) {
        _btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
        [_btn setTitle:@"进入NsUserDefaults传值界面2" forState:(UIControlStateNormal)];
        [_btn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
        [_btn setBackgroundColor:[UIColor greenColor]];
        [_btn addTarget:self action:@selector(clickJump) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _btn;
}

-(UIButton *)btnBack{
    if (!_btnBack) {
        _btnBack = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 200, 50)];
        [_btnBack setTitle:@"返回列表" forState:(UIControlStateNormal)];
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
