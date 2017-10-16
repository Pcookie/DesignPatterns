//
//  ConsoleController.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleEmulator.h"
#import "ConsoleCommands.h"

@interface ConsoleController : NSObject
{
@private
    ConsoleEmulator *emulator_;
}

@property (nonatomic, retain) ConsoleEmulator *emulator;

- (void) setCommand:(ConsoleCommand) command;

// other behaviors and properties

@end
