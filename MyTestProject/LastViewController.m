//
//  LastViewController.m
//  MyTestProject
//
//  Created by 林兴栋 on 16/9/8.
//  Copyright © 2016年 林兴栋. All rights reserved.
//
#import <objc/runtime.h>
#import "LastViewController.h"
#import "DDTestClass.h"
#import "NSArray+custom.h"

@interface LastViewController ()

@end

@implementation LastViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)Tesssss{
    
}
- (void)ddTestLog{
    NSLog(@"这里是测试runtime");
}
- (IBAction)backPage:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:^{
        NSLog(@"返回上一页");
    }];
}
- (IBAction)myTestSelect:(id)sender{
    unsigned int onCount;
    Method * methods = class_copyMethodList([DDTestClass class], &onCount);
    for (int i=0; i<onCount; i++) {
        Method nowMethod = methods[i];
        NSString * name = NSStringFromSelector(method_getName(nowMethod));
        const char * type = method_getTypeEncoding(nowMethod);
        NSLog(@"\n%@==%s",name,type);
        if ([name isEqualToString:@"myPrivateMethod:andTest:"]) {
            
        }
    }
    NSArray * nowAr = [NSArray new];
    [nowAr DDTestMethod];
    nowAr.DDTestProperty = @"go go go go ";
    NSLog(@"%@",nowAr.DDTestProperty);
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
