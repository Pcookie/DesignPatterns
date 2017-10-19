//
//  FlowerView.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/18.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "FlowerView.h"

@implementation FlowerView
- (void) drawRect:(CGRect)rect
{
    [self.image drawInRect:rect];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
