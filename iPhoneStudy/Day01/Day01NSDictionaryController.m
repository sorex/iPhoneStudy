//
//  Day01NSDictionaryController.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-28.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import "Day01NSDictionaryController.h"

@interface Day01NSDictionaryController ()

@end

@implementation Day01NSDictionaryController

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
    NSDictionary *dic;
    NSMutableDictionary *mdic;
    
    info.text = @"执行完毕，请查看Output窗口。";
}

@end
