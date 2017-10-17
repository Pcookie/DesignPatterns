//
//  CustomTextField.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"
@interface CustomTextField : UITextField
{
    @private
    InputValidator *inputValidator_;
}
@property (nonatomic, retain) InputValidator *inputValidator;

- (BOOL) validate;

@end
