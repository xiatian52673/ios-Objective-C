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
    return 0;
    
    
}

    
//    NSString * appDelegateClassName;
//    @autoreleasepool {
//        // Setup code that might create autoreleased objects goes here.
//        appDelegateClassName = NSStringFromClass([AppDelegate class]);
//    }
//    return UIApplicationMain(argc, argv, nil, appDelegateClassName);

