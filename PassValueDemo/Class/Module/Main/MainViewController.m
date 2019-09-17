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
#import "DelegateOneViewController.h"
#import "BlockOneViewController.h"
#import "NotificationOneViewController.h"


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
    
    UIButton *delegateBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 250, 200, 50)];
    [delegateBtn setTitle:@"代理传值" forState:(UIControlStateNormal)];
    [delegateBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [delegateBtn addTarget:self action:@selector(jumpDelegate) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:delegateBtn];
    
    UIButton *blockBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 50)];
    [blockBtn setTitle:@"block传值" forState:(UIControlStateNormal)];
    [blockBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [blockBtn addTarget:self action:@selector(jumpBlock) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:blockBtn];

    UIButton *notifyBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 350, 200, 50)];
    [notifyBtn setTitle:@"通知传值" forState:(UIControlStateNormal)];
    [notifyBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [notifyBtn addTarget:self action:@selector(jumpNotify) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:notifyBtn];
    
    
    
    
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


-(void)jumpDelegate{
    DelegateOneViewController *delegateVC = [DelegateOneViewController new];
    [self presentViewController:delegateVC animated:YES completion:nil];
}

-(void)jumpBlock{
    BlockOneViewController *blockVC = [BlockOneViewController new];
    [self presentViewController:blockVC animated:YES completion:nil];
}

-(void)jumpNotify{
    NotificationOneViewController *notiVC = [NotificationOneViewController new];
    [self presentViewController:notiVC animated:YES completion:nil];
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
