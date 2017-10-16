//
//  ConsoleController.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "ConsoleController.h"

@implementation ConsoleController


@synthesize emulator=emulator_;

- (void) setCommand:(ConsoleCommand) command
{
    [emulator_ loadInstructionsForCommand:command];
    [emulator_ executeInstructions];
}

@end
