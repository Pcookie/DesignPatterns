//
//  FlowerFactory.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/18.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "FlowerFactory.h"
#import "FlowerView.h"

@implementation FlowerFactory
- (UIView *) flowerViewWithType:(FlowerType)type
{
    // lazy-load a flower pool
    if (flowerPool_ == nil)
    {
        flowerPool_ = [[NSMutableDictionary alloc]
                       initWithCapacity:kTotalNumberOfFlowerTypes];
    }
    
    // try to retrieve a flower
    // from the pool
    UIView *flowerView = [flowerPool_ objectForKey:[NSNumber
                                                    numberWithInt:type]];
    
    // if the type requested
    // is not available then
    // create a new one and
    // add it to the pool
    if (flowerView == nil)
    {
        UIImage *flowerImage;
        
        switch (type)
        {
            case kAnemone:
                flowerImage = [UIImage imageNamed:@"1.png"];
                break;
            case kCosmos:
                flowerImage = [UIImage imageNamed:@"2.png"];
                break;
            case kGerberas:
                flowerImage = [UIImage imageNamed:@"3.png"];
                break;
            case kHollyhock:
                flowerImage = [UIImage imageNamed:@"4.png"];
                break;
            case kJasmine:
                flowerImage = [UIImage imageNamed:@"5.png"];
                break;
            case kZinnia:
                flowerImage = [UIImage imageNamed:@"6.png"];
                break;
            default:
                break;
        }
        
        flowerView = [[[FlowerView alloc]
                       initWithImage:flowerImage] autorelease];
        [flowerPool_ setObject:flowerView 
                        forKey:[NSNumber numberWithInt:type]];
    }
    
    return flowerView;
}

- (void) dealloc
{
    [flowerPool_ release];
    [super dealloc];
}

@end
