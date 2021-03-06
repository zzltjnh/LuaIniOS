//
//  LuaProxy.m
//  LuaConsoleDemo
//
//  Created by ziggear on 14-1-30.
//  Copyright (c) 2014年 ziggear. All rights reserved.
//

#import "LuaProxy.h"
#import "lua.h"
#import "lauxlib.h"
#import "lualib.h"

@interface LuaProxy()
@property lua_State *mainState;
@end

@implementation LuaProxy
@synthesize mainState;

- (id)init {
    self = [super init];
    if(self){
        // 创建Lua虚拟机lua_State
        mainState = luaL_newstate();
        if(!mainState) {
            return nil;
        }
        
        // 加载内置库
        luaL_openlibs(mainState);
       }
    return self;
}

- (int)loadString:(NSString *)stringToExecute {
    const char *str = [stringToExecute cStringUsingEncoding:NSUTF8StringEncoding];
    const int status = luaL_loadstring(mainState, str);
    lua_pcall(mainState,0,0,0);
    return status;
}

- (void)registerMethod:(NSString*)methodName
{
    
}

- (void)aaa
{
    char strLuaEngine[512];
    NSString *logPath = [[NSBundle mainBundle] pathForResource:@"et_1_phone" ofType:@"lua"];
    const char * tmp1=  [logPath UTF8String];
    strncpy(strLuaEngine, (char*)tmp1, strlen(tmp1));
    NSLog(@"strLuaEngine %s \n",strLuaEngine);
    int s1 = luaL_loadfile(mainState, strLuaEngine);
    
    //loadfile仅仅视编译lua文件，并不执行这个文件，也就是说只是在栈上形成了一个匿名函数。只有执行这个函数一次，才会使得printmsg可以通过lua_getglobal获取，否则，全局变量是空的
    s1 = lua_pcall(mainState, 0, 0, 0);
    
    lua_getglobal(mainState, "printmsg");//得到名字为printmsg的函数
    lua_pcall(mainState, 0, 0, 0);//执行printmsg函数
}

- (void)dealloc {
    lua_close(mainState);
}

@end
