//
//  ConsoleEmulator.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "ConsoleEmulator.h"

@implementation ConsoleEmulator
- (void) loadInstructionsForCommand:(ConsoleCommand) command
{
    // should throw an exception
}

- (void) executeInstructions
{
    // subclasses can use this default
    // implementation to
    // execute all loaded instructions
    // in the command data structure.
}
@end
