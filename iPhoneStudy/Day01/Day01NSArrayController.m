//
//  Day01NSArrayController.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-28.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import <objc/objc.h>

#import "Day01NSArrayController.h"

@interface Day01NSArrayController ()

@end

@implementation Day01NSArrayController

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
    NSArray *arr = [NSArray arrayWithObjects:@"a",@"b",@"c", nil];
    for (int i = 0; i < arr.count; i++) 
    {
        NSLog(@"%@ ",[arr objectAtIndex:i]);
    }
    
    //检测是否包含某个元素
    if([arr containsObject:@"a"])// isEqual
        NSLog(@"have a.");
    
    //获取元素在列表中的索引
    NSLog(@"b is at %i",[arr indexOfObject:@"b"]);// isEqual
    
    //获取索引位置的元素
    NSLog(@"at 2 is %@",[arr objectAtIndex:2]);
    
    //可变数组
    NSMutableArray *marr = [NSMutableArray arrayWithCapacity:10];//创建一个大小为10的数组
    //添加对象
    [marr addObject:[NSNumber numberWithInt:15]];
    [marr addObject:[NSNumber numberWithInt:25]];
    [marr addObject:[NSNumber numberWithInt:35]];
    
    //插入对象
    [marr insertObject:[NSNumber numberWithInt:5] atIndex:2];
   
    //删除对象
    [marr removeObjectIdenticalTo:[NSNumber numberWithInt:25]]; // 删除同一个对象，这里是新对象，所以不会删除
    [marr removeObject:[NSNumber numberWithInt:25]];// 删除值相等的对象，这里会删除25，isEqual
//   [marr removeObjectAtIndex:2];//删除索引位置的对象
    
    //替换索引位置对象
    [marr replaceObjectAtIndex:0 withObject:[NSNumber numberWithInt:45]];
    
    //****************************************************************
    //排序,方法1，使用NSNumber的compare:进行对比
    [marr sortUsingSelector:@selector(compare:)];

    //排序,方法2，使用自定义的的compareNSNumberUsingCString进行对比，使用字符串
//    [marr sortUsingFunction:compareNSNumberUsingCString
//                           context:@"intValue"];
 
    //排序,方法3，使用自定义的的compareNSNumberUsingSelector进行对比，使用SEL
//    [marr sortUsingFunction:compareNSNumberUsingSelector
//                    context:@selector(intValue)];
    //****************************************************************

    for (NSNumber *n in marr) {
        NSLog(@"%@", n);
    }
    
    info.text = @"执行完毕，请查看Output窗口。";
}

static int compareNSNumberUsingCString(id p1, id p2, void *context)
{
    NSString *methodName = (__bridge NSString *)context;
    SEL methodSelector = NSSelectorFromString(methodName);
    int value1 = objc_msgSend(p1, methodSelector);  //返回值为int，否则定义为id
    int value2 = objc_msgSend(p2, methodSelector);
    
    return [[NSNumber numberWithInt:value1] compare:[NSNumber numberWithInt:value2]];
}

static int compareNSNumberUsingSelector(id p1, id p2, void *context)
{
    SEL methodSelector = (SEL)context;
    int value1 = objc_msgSend(p1, methodSelector);
    int value2 = objc_msgSend(p2, methodSelector);
   
    return [[NSNumber numberWithInt:value1] compare:[NSNumber numberWithInt:value2]];
}
@end
