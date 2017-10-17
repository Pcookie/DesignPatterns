//
//  ImageTransformFilter.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageTransformFilter : ImageFilter
{
    @private
    CGAffineTransform transform_;
}

@property (nonatomic, assign) CGAffineTransform transform;

- (id)initWithImageComponent:(id <ImageComponent>)component
                   transform:(CGAffineTransform)transform;
- (void)apply;

@end
