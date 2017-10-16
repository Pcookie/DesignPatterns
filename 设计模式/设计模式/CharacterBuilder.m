//
//  CharacterBuilder.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "CharacterBuilder.h"

@implementation CharacterBuilder

@synthesize character=character_;


- (CharacterBuilder *) buildNewCharacter
{
    // autorelease the previous character
    // before creating a new one
    character_ = [[Character alloc] init];
    return self;
}

- (CharacterBuilder *) buildStrength:(float) value
{
    character_.strength = value;
    return self;
}

- (CharacterBuilder *) buildStamina:(float) value
{
    character_.stamina = value;
    return self;
}

- (CharacterBuilder *) buildIntelligence:(float) value
{
    character_.intelligence = value;
    return self;
}

- (CharacterBuilder *) buildAgility:(float) value
{
    character_.agility = value;
    return self;
}

- (CharacterBuilder *) buildAggressiveness:(float) value
{
    character_.aggressiveness = value;
    return self;
}


@end
