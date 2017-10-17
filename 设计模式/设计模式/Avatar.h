//
//  Avatar.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "AttackHandler.h"

@interface Avatar : AttackHandler
// overridden method
- (void) handleAttack:(Attack *)attack;
@end
