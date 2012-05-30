//
//  Day02DemoClass.h
//  iPhoneStudy
//
//  Created by 磊 徐 on 12-5-30.
//  Copyright (c) 2012年 sorex. All rights reserved.
//

#import <Foundation/Foundation.h>

//定义类接口 类名              继承自     遵守的协议
@interface Day02DemoClassA : NSObject <NSCopying, NSCopying>
{
    //定义变量
    //定义私有成员
    @private
        NSString *a;
    //定义受保护成员
    @protected
        NSString *b;
        NSString *c;
    //定义公有成员
    @public
        NSString *d;
}

@property (nonatomic, retain) NSString *e;//公有成员

+(void)staticMethod;//静态方法(类方法)
-(void)publicMethod;//公有方法(对象实例方法)
@end
