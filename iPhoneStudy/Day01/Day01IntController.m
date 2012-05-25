//
//  Day01IntController.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-25.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import "Day01IntController.h"

@interface Day01IntController ()

@end

@implementation Day01IntController

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
    int i = 15;//十进制
    int j = 050;//八进制前导0
    int k = 0xFf;//十六进制前导0x或者0X
    
    NSLog(@"%i",i);//15
    NSLog(@"%o",j);//50
    NSLog(@"%#o",j);//050
    NSLog(@"%x",k);//Ff
    NSLog(@"%#x",k);//0xFf
    
    info.text = @"执行完毕，请查看Output窗口。";
}
@end
