//
//  Day02RootController.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-29.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import "Day02RootController.h"

#import "Day02ViewController.h"

@interface Day02RootController ()

@end

@implementation Day02RootController

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

-(IBAction) _interface:(id)sender
{
    Day02ViewController *detail = (Day02ViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"Day02View"];
    detail.navigationItem.Title = @"@interface";
    
    NSMutableString *str = [NSMutableString stringWithString:@"声明类 \n"];
    [str appendString: @"@interface MyClass\n"];
    [str appendString: @"//定义类\n"];
    [str appendString: @"@end\n"];
    detail.Content = str;
    
    [self.navigationController pushViewController:detail animated:YES];
}

-(IBAction) _implementation:(id)sender
{
    Day02ViewController *detail = (Day02ViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"Day02View"];
    detail.navigationItem.Title = @"@implementation";
    
    NSMutableString *str = [NSMutableString stringWithString:@"声明类 \n"];
    [str appendString: @"@implementation MyClass\n"];
    [str appendString: @"//实现类\n"];
    [str appendString: @"@end\n"];
    detail.Content = str;
    
    [self.navigationController pushViewController:detail animated:YES];
}

@end
