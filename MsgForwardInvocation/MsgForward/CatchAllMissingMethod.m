//
//  CatchAllMissingMethod.m
//  MsgForwardInvocation
//
//  Created by mayzh on 7/14/20.
//  Copyright © 2020 My. All rights reserved.
//

#import "CatchAllMissingMethod.h"

@implementation CatchAllMissingMethod

- (void)missedInstanceMethod:(NSString *)className methodName:(NSString *)methodName {
    NSLog(@"丢失实例方法, className:%@, methodName:%@", className, methodName);
}

+ (void)missedClassMethod:(NSString *)className methodName:(NSString *)methodName {
    NSLog(@"丢失类方法, className:%@, methodName:%@", className, methodName);
}

@end
