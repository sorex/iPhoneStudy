//
//  Day02ViewController.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-29.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import "Day02ViewController.h"

@interface Day02ViewController ()

@end

@implementation Day02ViewController

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
    
    self.tv.text = Content;
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

@synthesize tv,Content;
@end
