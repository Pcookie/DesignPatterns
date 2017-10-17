//
//  Hotdog.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "AnySandwich.h"

@interface Hotdog : AnySandwich

- (void) prepareBread;
- (void) addMeat;
- (void) addCondiments;
//- (void) extraStep;

// Hotdog specific methods
- (void) getHotdogBun;
- (void) addWiener;
- (void) addKetchup;
- (void) addMustard;
- (void) addOnion;

@end
