//
//  main.m
//  ios-Objective-C
//
//  Created by Tian Xia on 3/8/20.
//  Copyright © 2020 Tian Xia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"

int main(int argc, char * argv[]) {
    NSLog(@"Hello World!");
    int var1 = 1;
    long var2 = 2;
    float var3 = 3.0f;
    double var4 = 4.0;
    long long var5 = 5;
    char var6 = 'a';
    BOOL var7 = YES;
    NSInteger var8 = 8;
    NSUInteger var9 = 9;

    NSLog(@"%d %ld %f %f %lld %c %d %ld %lu", var1, var2, var3, var4, var5, var6, var7, (long)var8, (unsigned long)var9);


    Person *person = [[Person alloc] initWithName:@"alex" andAge:23];
    NSString *name = [person name];
    NSInteger age = [person age];
    NSLog(@"%@, %ld",name, (long)age);
    [person setName:@"Bob"];
    [person setAge: 30];
    NSLog(@"%@, %ld",[person name], (long)[person age]);
    
    NSNumber *num1 = @LONG_MAX;
    NSNumber *num2 = @-4.2f;
    int a = [num1 intValue];
    long b = [num1 longValue];
    int c = num2.intValue;
    float d = num2.floatValue;
    BOOL e = num2.boolValue;
    
//    NSURL *url = [NSURL URLWithString:@"https://www.sogou.com/"];
//    NSString *content = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
//    NSLog(@"%@", content);
    
    NSArray *arr = @[@1, @2, @3, @4];
    for (int i = 0; i < [arr count]; i++) {
        NSNumber *value = arr[i];
        NSLog(@"%@", value);
    }

    for (NSNumber *value in arr) {
        NSLog(@"%@", value);
    }
    NSString *str = [arr componentsJoinedByString:@"-"];
    NSLog(@"%@", str);
    
    NSArray *arr2 = [@"1-2-3-4" componentsSeparatedByString:@"-"];
    NSLog(@"%@", arr2);
    
//    NSDictionary *dic = @{@"key1":@"value1", @"key2":@"value2"};
//
//    NSUInteger count = [dic count];
//
//    NSString *val1 = [dic objectForKey:@"key1"];
//    NSString *val2 = dic[@"key2"];
//
//    NSArray *keys = [dic allKeys];
//    NSArray *values = [dic allValues];
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:@{@"key1":@"value1", @"key2":@"value2"}];

    //如果value3、value4改为nil分别有什么效果？
    [dic setObject:@"newvalue2" forKey:@"key2"];
    [dic setObject:@"value3" forKey:@"key3"];
    dic[@"key4"] = @"value4";

    [dic removeObjectForKey:@"key1"];

    NSLog(@"%@", dic);
    
}

    
//    NSString * appDelegateClassName;
//    @autoreleasepool {
//        // Setup code that might create autoreleased objects goes here.
//        appDelegateClassName = NSStringFromClass([AppDelegate class]);
//    }
//    return UIApplicationMain(argc, argv, nil, appDelegateClassName);

