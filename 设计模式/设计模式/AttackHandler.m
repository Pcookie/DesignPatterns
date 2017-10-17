//
//  AttackHandler.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler
@synthesize nextAttackHandler=nextAttackHandler_;


- (void) handleAttack:(Attack *)attack
{
    [nextAttackHandler_ handleAttack:attack];
}
@end
