//
//  MetalArmor.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "MetalArmor.h"
#import "SwordAttack.h"
@implementation MetalArmor

- (void) handleAttack:(Attack *)attack
{
    if ([attack isKindOfClass:[SwordAttack class]])
    {
        // no damage beyond this armor
        NSLog(@"%@", @"No damage from a sword attack!");
    }
    else
    {
        NSLog(@"I don't know this attack: %@", [attack class]);
        [super handleAttack:attack];
    }
}
@end
