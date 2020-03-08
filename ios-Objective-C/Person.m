//
//  Person.m
//  ios-Objective-C
//
//  Created by Tian Xia on 3/8/20.
//  Copyright © 2020 Tian Xia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAge:(NSInteger)age {
    if (age >=0 && age <= 256) {
        _age = age;
    }
}

- (NSString *)name {
    return _name ? : @"unknown";
}

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

+ (instancetype)personWithName:(NSString *)name andAge:(NSInteger)age {
    Person *person = [[Person alloc] initWithName:name andAge:age];
    return person;
}

- (void)sayHello {
    NSLog(@"I am %@ at %ld", self.name, (long)_age);
}

//重写NSObject方法，返回用于NSLog(@"%@")输出的内容
- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %ld", _name, (long)_age];
}

@end
