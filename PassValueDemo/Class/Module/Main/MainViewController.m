//
//  MainViewController.m
//  PassValueDemo
//
//  Created by 李晓龙 on 2019/9/16.
//  Copyright © 2019 LXL. All rights reserved.
//

#import "MainViewController.h"

// 其他界面
#import "AttributeOneViewController.h"
#import "InstanceOneViewController.h"
#import "UserDefaultsOneViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self config];
}

-(void)config{
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *AttributeBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    [AttributeBtn setTitle:@"属性传值" forState:(UIControlStateNormal)];
    [AttributeBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [AttributeBtn addTarget:self action:@selector(jumpAttribute) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:AttributeBtn];
    
    UIButton *InsBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 150, 200, 50)];
    [InsBtn setTitle:@"单利传值" forState:(UIControlStateNormal)];
    [InsBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [InsBtn addTarget:self action:@selector(jumpIns) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:InsBtn];
    
    UIButton *nsUserBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    [nsUserBtn setTitle:@"NSUserDefaults传值" forState:(UIControlStateNormal)];
    [nsUserBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [nsUserBtn addTarget:self action:@selector(jumpNsuser) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:nsUserBtn];
    
    
    
    
}


-(void)jumpAttribute{
    AttributeOneViewController * attVC = [AttributeOneViewController new];
    [self presentViewController:attVC animated:YES completion:nil];
}

-(void)jumpIns{
    InstanceOneViewController *insVC = [InstanceOneViewController new];
    [self presentViewController:insVC animated:YES completion:nil];
}

-(void)jumpNsuser{
    UserDefaultsOneViewController *userVC = [UserDefaultsOneViewController new];
    [self presentViewController:userVC animated:YES completion:nil];
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
