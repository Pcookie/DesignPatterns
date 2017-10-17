//
//  AnySandwich.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "AnySandwich.h"

@implementation AnySandwich
- (void) make
{
    [self prepareBread];
    [self putBreadOnPlate];
    [self addMeat];
    [self addCondiments];
    [self extraStep];
    [self serve];
}

- (void) putBreadOnPlate
{
    // We need first to put bread on a plate for any sandwich.
}

- (void) serve
{
    // Any sandwich will be served eventually.
}

#pragma mark -
#pragma Details will be handled by subclasses

- (void) prepareBread
{
    
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void) addMeat
{
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void) addCondiments
{
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void) extraStep{}
@end
