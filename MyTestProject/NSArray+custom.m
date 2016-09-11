//
//  NSArray+custom.m
//  MyTestProject
//
//  Created by 林兴栋 on 16/9/11.
//  Copyright © 2016年 林兴栋. All rights reserved.
//

#import "NSArray+custom.h"
#import <objc/runtime.h>

@implementation NSArray (custom)
- (void)DDTestMethod{
    NSLog(@"实现了一个自定的方法，在array的catgory里");
}
- (void)setDDTestProperty:(NSString *)DDTestProperty{
    objc_setAssociatedObject(self, @selector(DDTestProperty), DDTestProperty, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSString *)DDTestProperty{
    return objc_getAssociatedObject(self, @selector(DDTestProperty));
}
@end
