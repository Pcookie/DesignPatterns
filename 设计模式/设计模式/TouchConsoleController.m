//
//  TouchConsoleController.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "TouchConsoleController.h"

@implementation TouchConsoleController

- (void) up
{
    [super setCommand:kConsoleCommandUp];
}

- (void) down
{
    [super setCommand:kConsoleCommandDown];
}

- (void) left
{
    [super setCommand:kConsoleCommandLeft];
}

- (void) right
{
    [super setCommand:kConsoleCommandRight];
}

- (void) select
{
    [super setCommand:kConsoleCommandSelect];
}

- (void) start
{
    [super setCommand:kConsoleCommandStart];
}

- (void) action1
{
    [super setCommand:kConsoleCommandAction1];
}

- (void) action2
{
    [super setCommand:kConsoleCommandAction2];
}

@end
