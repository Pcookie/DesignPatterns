//
//  GameGearEmulator.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "GameGearEmulator.h"

@implementation GameGearEmulator
- (void) loadInstructionsForCommand:(ConsoleCommand) command
{
    // load specific instructions for
    // the Game Gear
    NSLog(@"gear load %u", command);
}

- (void) executeInstructions
{
    // execute loaded instructions
    NSLog(@"gear executeInstructions");
}
@end
