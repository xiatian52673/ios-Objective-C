//
//  PrintProtocal.h
//  ios-Objective-C
//
//  Created by Tian Xia on 3/8/20.
//  Copyright © 2020 Tian Xia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PrintProtocal <NSObject>

@optional
@property (nonatomic, strong) NSString *name;

@required
- (void)printName;


@end

NS_ASSUME_NONNULL_END
