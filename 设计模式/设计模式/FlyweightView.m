//
//  FlyweightView.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/18.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "FlyweightView.h"
#import "ExtrinsicFlowerState.h"

@implementation FlyweightView
@synthesize flowerList=flowerList_;

extern NSString *FlowerObjectKey, *FlowerLocationKey;

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    for (NSValue *stateValue in flowerList_)
    {
        ExtrinsicFlowerState state;
        [stateValue getValue:&state];
        
        UIView *flowerView = state.flowerView;
        flowerView.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1];
        CGRect area = state.area;
        
        [flowerView drawRect:area];
    }
}
- (void)dealloc
{
    [flowerList_ release];
    [super dealloc];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
