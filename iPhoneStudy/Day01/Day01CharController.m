//
//  Day01CharController.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-27.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import "Day01CharController.h"

@interface Day01CharController ()

@end

@implementation Day01CharController

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
    char i = 'a';
    char j = '\n';
    char k = '0';
    
    // char类型可以当作int类型做输出.
    NSLog(@"%c",i);//a
    NSLog(@"%i",j);//10
    NSLog(@"%#o",j);//012
    NSLog(@"%x",k);//30
    NSLog(@"%#x",k);//0x30

    info.text = @"执行完毕，请查看Output窗口。";
}

@end
