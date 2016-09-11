//
//  DDTestClass.m
//  MyTestProject
//
//  Created by 林兴栋 on 16/9/8.
//  Copyright © 2016年 林兴栋. All rights reserved.
//

#import "DDTestClass.h"

@interface DDTestClass ()
@property (nonatomic,strong) NSString * tee;
@end

@implementation DDTestClass
- (void)testdd{
    NSLog(@"DDTestClass");
}
- (void)myPrivateMethod:(id)nowId andTest:(NSArray *)arr{
    NSLog(@"this is my private method");
}
@end
