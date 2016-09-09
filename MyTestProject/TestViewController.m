//
//  TestViewController.m
//  MyTestProject
//
//  Created by 林兴栋 on 16/9/8.
//  Copyright © 2016年 林兴栋. All rights reserved.
//
#import "TestViewController.h"
#import "LastViewController.h"
#import "DDTestClass.h"
#import <objc/runtime.h>
@interface TestViewController ()

@end

@implementation TestViewController
- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"即将加载第二页");
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)backPage:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:^{
        NSLog(@"我点了返回");
    }];
}
- (IBAction)pushLastPage:(UIButton *)sender {
    LastViewController * lVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"LastViewController"];
    [self presentViewController:lVC animated:true completion:^{
        NSLog(@"点我进到了最后一页");
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
