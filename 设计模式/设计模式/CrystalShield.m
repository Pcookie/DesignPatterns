//
//  CrystalShield.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "CrystalShield.h"
#import "MagicFireAttack.h"

@implementation CrystalShield
- (void) handleAttack:(Attack *)attack
{
    if ([attack isKindOfClass:[MagicFireAttack class]])
    {
        // no damage beyond this shield
        NSLog(@"%@", @"No damage from a magic fire attack!");
    }
    else
    {
        NSLog(@"I don't know this attack: %@", [attack class]);
        [super handleAttack:attack];
    }
}
@end
