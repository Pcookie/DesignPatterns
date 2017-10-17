//
//  Hamburger.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "AnySandwich.h"

@interface Hamburger : AnySandwich

- (void) prepareBread;
- (void) addMeat;
- (void) addCondiments;
//- (void) extraStep;

// Hamburger specific methods
- (void) getBurgerBun;
- (void) addKetchup;
- (void) addMustard;
- (void) addBeefPatty;
- (void) addCheese;
- (void) addPickles;
@end
