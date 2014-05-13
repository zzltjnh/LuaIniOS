//
//  ViewController.m
//  TestLua
//
//  Created by zzl on 14-5-12.
//  Copyright (c) 2014年 zzl. All rights reserved.
//

#import "ViewController.h"
#import "LuaProxy/LuaProxy.h"

#include "lua.h"
#include "lua.hpp"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    LuaProxy *luaProxy = [[LuaProxy alloc] init];
    [luaProxy loadString:@"print(\"hello world\")"];
    
    [luaProxy aaa];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
