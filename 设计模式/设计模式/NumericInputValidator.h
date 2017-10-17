//
//  NumericInputValidator.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "InputValidator.h"

@interface NumericInputValidator : InputValidator
// A validation method that makes sure the input only contains
// numbers i.e. 0-9
- (BOOL) validateInput:(UITextField *)input error:(NSError **) error;

@end
