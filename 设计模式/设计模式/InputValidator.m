//
//  InputValidator.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator

// A stub for any actual validation strategy
- (BOOL) validateInput:(UITextField *)input error:(NSError **) error
{
    if (error)
    {
        *error = nil;
    }
    
    return NO;
}


@end
