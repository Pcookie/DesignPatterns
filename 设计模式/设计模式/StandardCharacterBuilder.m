//
//  StandardCharacterBuilder.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "StandardCharacterBuilder.h"

@implementation StandardCharacterBuilder

- (CharacterBuilder *) buildStrength:(float) value
{
    // update the protection value of the character
    character_.protection *= value;
    
    // update the power value of the character
    character_.power *= value;
    
    // finally set the strength value and return this builder
    return [super buildStrength:value];
}

- (CharacterBuilder *) buildStamina:(float) value
{
    // update the protection value of the character
    character_.protection *= value;
    
    // update the power value of the character
    character_.power *= value;
    
    // finally set the strength value and return this builder
    return [super buildStamina:value];
}

- (CharacterBuilder *) buildIntelligence:(float) value
{
    // update the protection value of the character
    character_.protection *= value;
    
    // update the power value of the character
    character_.power /= value;
    
    // finally set the strength value and return this builder
    return [super buildIntelligence:value];
}

- (CharacterBuilder *) buildAgility:(float) value
{
    // update the protection value of the character
    character_.protection *= value;
    
    // update the power value of the character
    character_.power /= value;
    
    // finally set the strength value and return this builder
    return [super buildAgility:value];
}

- (CharacterBuilder *) buildAggressiveness:(float) value
{
    // update the protection value of the character
    character_.protection /= value;
    
    // update the power value of the character
    character_.power *= value;
    
    // finally set the strength value and return this builder
    return [super buildAggressiveness:value];
}


@end
