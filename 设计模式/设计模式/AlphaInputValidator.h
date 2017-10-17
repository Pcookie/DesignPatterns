//
//  AlphaInputValidator.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "InputValidator.h"

@interface AlphaInputValidator : InputValidator
// A validation method that makes sure the input only
// contains letters only i.e. a-z A-Z
- (BOOL) validateInput:(UITextField *)input error:(NSError **) error;
@end
