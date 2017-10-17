//
//  AnySandwich.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnySandwich : NSObject
- (void) make;

// Steps to make a sandwich
- (void) prepareBread;
- (void) putBreadOnPlate;
- (void) addMeat;
- (void) addCondiments;
- (void) extraStep;
- (void) serve;
@end
