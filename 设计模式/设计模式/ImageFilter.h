//
//  ImageFilter.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageComponent.h"
#import "UIImage+ImageComponent.h"

@interface ImageFilter : NSObject<ImageComponent>
{
    @private
    id <ImageComponent> component_;
}
@property (nonatomic, retain) id <ImageComponent> component;

- (void) apply;
- (id) initWithImageComponent:(id <ImageComponent>) component;
- (id) forwardingTargetForSelector:(SEL)aSelector;

/*
 // overridden methods in UIImage APIs
 - (void) drawAsPatternInRect:(CGRect)rect;
 - (void) drawAtPoint:(CGPoint)point;
 - (void) drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
 - (void) drawInRect:(CGRect)rect;
 - (void) drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
 */

@end
