//
//  Day01FloatController.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-25.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import "Day01FloatController.h"

@interface Day01FloatController ()

@end

@implementation Day01FloatController

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
    float i = 3.f;//浮点计数法
    float j = 10.2f;//浮点计数法
    float k = -.5f;//浮点计数法
    float l = 1.2e-5f;//科学计数法
    float m = 1.2E2f;//科学计数法
    float n = 0x0.3p10f;//16进制计数p或P后代表二进制指数3/16*2e10 = 192
    
    NSLog(@"%f",i);//3.000000
    NSLog(@"%e",j);//1.020000e+01
    NSLog(@"%f",k);//-0.500000
    NSLog(@"%g",l);//1.2e-05
    NSLog(@"%g",m);//120
    NSLog(@"%f",n);//192.000000
    
    //%g e的值小于-4或大于5时用%e显示，否则用%f显示，会自动去掉多余的0
    
    info.text = @"执行完毕，请查看Output窗口。";
}
@end
