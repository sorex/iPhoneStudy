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
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"this is a.",@"a",@"this is b.",@"b",@"this is c.",@"c", nil];
    
    for (NSString *key in dic) 
    {
        NSLog(@"%@:%@",key,[dic objectForKey:key]);
    }
    
    NSMutableDictionary *mdic = [NSMutableDictionary dictionary];
    [mdic setObject:@"this A" forKey:@"a"];
    [mdic setObject:@"this B" forKey:@"b"];
    [mdic setObject:@"this C" forKey:@"c"];
    
    [mdic removeObjectForKey:@"b"];
    
    for (NSString *key in mdic) 
    {
        NSLog(@"%@:%@",key,[mdic objectForKey:key]);
    }    
    
    info.text = @"执行完毕，请查看Output窗口。";
}

@end
