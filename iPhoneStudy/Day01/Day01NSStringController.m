//
//  Day01NSStringController.m
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-28.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import "Day01NSStringController.h"

@interface Day01NSStringController ()

@end

@implementation Day01NSStringController

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
    // @"abc" 这是C-string类型的字符串
    // NSString和C-string是不同的类型
    NSString *str = @"abc";
    NSLog(@"%@", str);
    
    NSString *x, *y, *z;//不可变字符串
    NSMutableString *ms;//可变字符串
    
    //初始化
    x = @"this is x.";
    y = @"THIS IS Y.";
    z = [NSString stringWithString:x];//z=@"this is x."
    
    //字符串相加
    z = [x stringByAppendingString:y];//z=@"this is x.THIS IS Y."
    
    //大小写转化
    z = [x uppercaseString];//转化为大写
    z = [y uppercaseString];//转化为小写
    z = [x capitalizedString];//转化为每个单词首字母大写的字符串，其余字符小写。
    
    //对比
    if ([x isEqualToString:y]) //判断是否相等
    {
        NSLog(@"x == y");
    }
    NSComparisonResult result;
    result = [x compare:y];//判断大小使用 compare: , x<y返回 NSOrderedAscending, x==y返回 NSOrderedSame, x>y返回NSOrderedDescending
    result = [x caseInsensitiveCompare:y];//大小写不敏感的比较

    //截取
    z = [x substringToIndex:3];//@"thi"
    z = [x substringFromIndex:5];//@"is x."
    z = [[x substringFromIndex:5] substringToIndex:2];//@"is"
    z = [x substringWithRange:NSMakeRange(5, 2)];//@"is"
    
    //查找
    NSRange subRange = [x rangeOfString:@" is "];//subRange.location = 4 subRange.length = 4
    if (subRange.location != NSNotFound) {
        NSLog(@"location:%u length:%u",subRange.location,subRange.length);
    }
    
    //开始或结尾
    [x hasPrefix:@"this"];//测试x是否以@"this"开头,返回BOOL
    [x hasSuffix:@"x."];//测试x是否以@"this"开头,返回BOOL
    
    //返回索引i的Unicode字符
    unichar a = [z characterAtIndex:2];
    
    //返回转换为UTF-8字符串的字符串
    char *b = [z UTF8String];
    
    //**********************************************
    //可变字符串
    //**********************************************
    //初始化
    ms = [NSMutableString stringWithString:x];//@"this is x."
    
    //插入
    [ms insertString:@"abc " atIndex:8];//@"this is abc x."
    
    //相加
    [ms appendString:@" this is add new string."];//@"this is abc x. this is add new string."
    
    //删除
    [ms deleteCharactersInRange:NSMakeRange(14, 24)];//@"this is abc x."
    
    //查找
    subRange = [ms rangeOfString:@"abc "];
    if(subRange.location != NSNotFound)
    {
        [ms deleteCharactersInRange:subRange];
        NSLog(@"%@", ms);//@"this is x."
    }
    
    //替换
    [ms replaceCharactersInRange:NSMakeRange(0, 7) withString:@"I'm"];//@"I'm x."
    
    //重赋值
    [ms setString:@"this is ms."];

    //查找并替换
    subRange = [ms rangeOfString:@"is"];
    if(subRange.location != NSNotFound)
    {
        [ms replaceCharactersInRange:subRange withString:@"__"];//@"th__ is ms."
    }
    
    //查找并替换全部
    [ms setString:@"this is ms."];
    [ms replaceOccurrencesOfString:@"is"
                        withString:@"__"
                           options:NSLiteralSearch
                             range:NSMakeRange(0, [ms length])];//@"th__ __ ms."
    //options 
    //NSBackwardsSearch 倒序搜索
    //NSAnchoredSearch 必须从范围开始匹配才符合条件
    //NSLiteralSearch 文本搜索
    //NSCaseInsensitiveSearch 忽略大小写
    
    info.text = @"执行完毕，请查看Output窗口。";
}

@end
