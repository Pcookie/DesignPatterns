//
//  ReubenSandwich.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "AnySandwich.h"

@interface ReubenSandwich : AnySandwich
- (void) prepareBread;
- (void) addMeat;
- (void) addCondiments;
- (void) extraStep;

// ReubenSandwich's specific operations
- (void) cutRyeBread;
- (void) addCornBeef;
- (void) addSauerkraut;
- (void) addThousandIslandDressing;
- (void) addSwissCheese;
- (void) grillIt;
@end
