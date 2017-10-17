//
//  UIImage+Shadow.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "UIImage+Shadow.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Shadow)

- (UIImage *) imageWithDropShadow
{
    CGContextRef context = [self beginContext];
    
    // set up shadow
    CGSize offset = CGSizeMake (-25,  15);
    CGContextSetShadow(context, offset, 20.0);
    
    // Draw the original image to the context
    UIImage * imageOut = [self getImageFromCurrentImageContext];
    
    [self endContext];
    
    return imageOut;
}

@end
