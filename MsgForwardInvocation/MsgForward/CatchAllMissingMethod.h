//
//  CatchAllMissingMethod.h
//  MsgForwardInvocation
//
//  Created by mayzh on 7/14/20.
//  Copyright © 2020 My. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CatchAllMissingMethod : NSObject
- (void)missedInstanceMethod:(NSString *)className methodName:(NSString *)methodName;
+ (void)missedClassMethod:(NSString *)className methodName:(NSString *)methodName;
@end

NS_ASSUME_NONNULL_END
