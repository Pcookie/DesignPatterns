//
//  Character.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "Character.h"

@implementation Character

@synthesize protection=protection_;
@synthesize power=power_;
@synthesize strength=strength_;
@synthesize stamina=stamina_;
@synthesize intelligence=intelligence_;
@synthesize agility=agility_;
@synthesize aggressiveness=aggressiveness_;

- (id) init
{
    if (self = [super init])
    {
        protection_ = 1.0;
        power_ = 1.0;
        strength_ = 1.0;
        stamina_ = 1.0;
        intelligence_ = 1.0;
        agility_ = 1.0;
        aggressiveness_ = 1.0;
    }
    
    return self;
}

@end
