//
//  LuaProxy.h
//  LuaConsoleDemo
//
//  Created by ziggear on 14-1-30.
//  Copyright (c) 2014年 ziggear. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LuaProxy : NSObject
- (int)loadString:(NSString *)stringToExecute;

- (void)registerMethod:(NSString*)methodName;

- (void)aaa;
@end
