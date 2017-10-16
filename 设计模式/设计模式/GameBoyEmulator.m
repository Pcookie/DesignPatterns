//
//  GameBoyEmulator.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "GameBoyEmulator.h"

@implementation GameBoyEmulator
- (void) loadInstructionsForCommand:(ConsoleCommand) command
{
    // load specific instructions for
    // the Game Boy
    NSLog(@"boy load %u", command);
}

- (void) executeInstructions
{
    // execute loaded instructions
    NSLog(@"boy executeInstructions");
}
@end
