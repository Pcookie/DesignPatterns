//
//  Avatar.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "Avatar.h"

@implementation Avatar

- (void) handleAttack:(Attack *)attack
{
    // when an attack reaches this point,
    // I'm hit.
    // actual points taken off depends on
    // the type of attack.
    NSLog(@"Oh! I'm hit with a %@!", [attack class]);
}
@end
