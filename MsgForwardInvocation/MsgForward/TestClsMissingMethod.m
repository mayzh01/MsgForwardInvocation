//
//  TestClsMissingMethod.m
//  MsgForwardInvocation
//
//  Created by mayzh on 7/14/20.
//  Copyright © 2020 My. All rights reserved.
//

#import "TestClsMissingMethod.h"

@implementation TestClsMissingMethod

#pragma mark - instance method
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSLog(@"有丢失的实例方法，转BaseMissingMethodCls类处理");
    return [NSClassFromString(@"BaseMissingMethodCls") new];
}



#pragma mark - class method

+ (BOOL)resolveClassMethod:(SEL)sel {
    return NO;
}

+ (id)forwardingTargetForSelector:(SEL)aSelector {
    NSLog(@"有丢失的类方法，转BaseMissingMethodCls类处理");
    return NSClassFromString(@"BaseMissingMethodCls");
}



@end
