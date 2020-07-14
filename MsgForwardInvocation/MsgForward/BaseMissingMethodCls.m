//
//  BaseMissingMethodCls.m
//  MsgForwardInvocation
//
//  Created by mayzh on 7/14/20.
//  Copyright © 2020 My. All rights reserved.
//

#import "BaseMissingMethodCls.h"

@implementation BaseMissingMethodCls

#pragma mark - instance method
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return nil;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [NSMethodSignature  signatureWithObjCTypes:"v@:"];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    NSString *className = NSStringFromClass([self class]);
    NSString *methodName = NSStringFromSelector(invocation.selector);

    id obj = [[NSClassFromString(@"CatchAllMissingMethod") alloc] init];
    SEL sel = NSSelectorFromString(@"missedInstanceMethod:methodName:");
    NSInvocation *anInvocation = [NSInvocation invocationWithMethodSignature:[obj methodSignatureForSelector:sel]];
    anInvocation.target = obj;
    anInvocation.selector = sel;

    [anInvocation setArgument:&className atIndex:2];
    [anInvocation setArgument:&methodName atIndex:3];
    [anInvocation invoke];
}


#pragma mark - class method

+ (BOOL)resolveClassMethod:(SEL)sel {
    return NO;
}

+ (id)forwardingTargetForSelector:(SEL)aSelector {
    return nil;
}

+ (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [NSMethodSignature  signatureWithObjCTypes:"v@:"];
}

+ (void)forwardInvocation:(NSInvocation *)invocation {
    NSString *className = NSStringFromClass([self class]);
    NSString *methodName = NSStringFromSelector(invocation.selector);

    Class cls = NSClassFromString(@"CatchAllMissingMethod");
    SEL sel = NSSelectorFromString(@"missedClassMethod:methodName:");
    NSInvocation *anInvocation = [NSInvocation invocationWithMethodSignature:[cls methodSignatureForSelector:sel]];
    anInvocation.target = cls;
    anInvocation.selector = sel;

    [anInvocation setArgument:&className atIndex:2];
    [anInvocation setArgument:&methodName atIndex:3];
    [anInvocation invoke];
}

@end
