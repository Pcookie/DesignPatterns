//
//  UIImage+Transform.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "UIImage+Transform.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Transform)
- (UIImage *) imageWithTransform:(CGAffineTransform)transform {
    CGContextRef context = [self beginContext];
    
    // setup transformation
    CGContextConcatCTM(context, transform);
    
    // Draw the original image to the context
    UIImage *imageOut = [self getImageFromCurrentImageContext];
    
    [self endContext];
    
    return imageOut;
}
@end
