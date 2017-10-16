//
//  AcmeBrandingFactory.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "AcmeBrandingFactory.h"
#import "AcmeView.h"
#import "AcmeMainButton.h"
#import "AcmeToolbar.h"

@implementation AcmeBrandingFactory

- (UIView *) brandedView
{
    // returns a custom view for Acme
    return [[AcmeView alloc] init];
}

- (UIButton *) brandedMainButton
{
    // returns a custom main button for Acme
    return [[AcmeMainButton alloc] init];
}

- (UIToolbar *) brandedToolbar
{
    // returns a custom toolbar for Acme
    return [[AcmeToolbar alloc] init];
}


@end
