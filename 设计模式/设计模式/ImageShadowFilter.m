//
//  ImageShadowFilter.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "ImageShadowFilter.h"

@implementation ImageShadowFilter

- (void) apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // set up shadow
    CGSize offset = CGSizeMake (-25,  15);
    CGContextSetShadow(context, offset, 20.0);
}
@end
