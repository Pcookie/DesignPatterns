//
//  CabDriver.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "CabDriver.h"

@implementation CabDriver
- (void) driveToLocation:(CGPoint) x
{
    // ...
    
    // set off the taximeter
    Taximeter *meter = [[Taximeter alloc] init];
    [meter start];
    
    // operate the vehicle
    // until location x is reached
    Car *car = [[Car alloc] init];
    [car releaseBrakes];
    [car changeGears];
    [car pressAccelerator];
    
    // ...
    
    // when it's reached location x
    // then stop the car and taximeter
    [car releaseAccelerator];
    [car pressBrakes];
    [meter stop];
    
    // ...
}

@end
