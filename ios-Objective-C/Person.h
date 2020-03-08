//
//  Person.h
//  ios-Objective-C
//
//  Created by Tian Xia on 3/8/20.
//  Copyright © 2020 Tian Xia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrintProtocal.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <PrintProtocal>

@property(nonatomic, strong) NSString *name;
@property(nonatomic, assign) NSInteger age;
@property (nonatomic, assign) float height;

- (BOOL)isTallerThan:(Person *)anotherPerson;

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age;//实例方法 + 初始化方法

+ (instancetype)personWithName:(NSString *)name andAge:(NSInteger)age;//类方法

- (void)sayHello;//实例方法

@end




NS_ASSUME_NONNULL_END
