//
//  ImageTransformFilter.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "ImageTransformFilter.h"

@implementation ImageTransformFilter
@synthesize transform=transform_;


- (id) initWithImageComponent:(id <ImageComponent>)component
                    transform:(CGAffineTransform)transform
{
    if (self = [super initWithImageComponent:component])
    {
        [self setTransform:transform];
    }
    
    return self;
}

- (void) apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // setup transformation
    CGContextConcatCTM(context, transform_);
}
@end
