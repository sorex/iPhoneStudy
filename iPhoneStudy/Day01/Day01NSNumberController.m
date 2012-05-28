//
//  Day01NSNumberController.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-28.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import <objc/objc.h>

#import "Day01NSNumberController.h"

@interface Day01NSNumberController ()

@end

@implementation Day01NSNumberController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
@synthesize info;

-(IBAction)execute:(id)sender
{
    NSNumber *i, *j, *k, *m;
    i = [NSNumber numberWithInt:10];//用int声明
    m = [NSNumber numberWithInteger:100];//用int声明，NSInteger是重新定义的int/long
    j = [NSNumber numberWithFloat:15.f];//用float声明
    k = [NSNumber numberWithDouble:25.5];//用double声明
    //还可以使用char，BOOL，等其他类型来声明
    
    NSLog(@"%@",i);//10
    //%@ 可以显示对象内容，通过重载description可以改变%@的输出
    
    int ii = [i intValue];//将NSNumber转化为基本数据int
    NSInteger nm = [m integerValue];//将NSNumber转化为基本数据int/long
    float fj = [j floatValue];//将NSNumber转化为基本数据float
    double dk = [k doubleValue];//将NSNumber转化为基本数据double
        
    //判断相等使用 isEqualToNumber: ,返回BOOL值
    //判断大小使用 compare: , A<B返回 NSOrderedAscending, A==B返回 NSOrderedSame, A>B返回NSOrderedDescending
    
    info.text = @"执行完毕，请查看Output窗口。";
}

@end
