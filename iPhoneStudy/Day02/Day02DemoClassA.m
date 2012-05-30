//
//  Day02DemoClass.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-30.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import "Day02DemoClassA.h"

int gNumber;//定义全局变量

static int gCount;//定义静态变量

#pragma mark Day02DemoClassA(private)
@interface Day02DemoClassA(private)
- (void)privateMethod;//私有方法(对象实例方法)
@end
#pragma mark -

#pragma mark Day02DemoClassA
//实现类           类名
@implementation Day02DemoClassA

#pragma mark property
@synthesize e;//自动实现属性

- (id)init
{
    if (self = [super init])
    {
        if(a == nil)
            a = [[NSString alloc] init];
        if(b == nil)
            b = [[NSString alloc] init];
        if(c == nil)
            c = [[NSString alloc] init];
        if(d == nil)
            d = [[NSString alloc] init];
        if(e == nil)
            e = [[NSString alloc] init];
    }
    return self;
}

+(void)staticMethod//静态方法(类方法)
{
    static int sa;
    sa++;
    NSLog(@"%i",sa);
}

-(void)publicMethod//公有方法(对象实例方法)
{
    
}
@end
