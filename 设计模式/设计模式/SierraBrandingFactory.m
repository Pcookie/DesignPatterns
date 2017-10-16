//
//  SierraBrandingFactory.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "SierraBrandingFactory.h"
#import "SierraView.h"
#import "SierraMainButton.h"
#import "SierraToolbar.h"

@implementation SierraBrandingFactory

- (UIView*) brandedView
{
    // returns a custom view for Sierra
    return [[SierraView alloc] init];
}

- (UIButton*) brandedMainButton
{
    // returns a custom main button for Sierra
    return [[SierraMainButton alloc] init];
}

- (UIToolbar*) brandedToolbar
{
    // returns a custom toolbar for Sierra
    return [[SierraToolbar alloc] init];
}

@end
