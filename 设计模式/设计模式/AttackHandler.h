//
//  AttackHandler.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"
@interface AttackHandler : NSObject
{
@private
    AttackHandler *nextAttackHandler_;
}

@property (nonatomic, retain) AttackHandler *nextAttackHandler;

- (void) handleAttack:(Attack *)attack;
@end
