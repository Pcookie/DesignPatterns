//
//  FlowerFactory.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/18.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    kAnemone,
    kCosmos,
    kGerberas,
    kHollyhock,
    kJasmine,
    kZinnia,
    kTotalNumberOfFlowerTypes
} FlowerType;

@interface FlowerFactory : NSObject
{
    @private
    NSMutableDictionary *flowerPool_;
}

- (UIView *) flowerViewWithType:(FlowerType)type;

@end
