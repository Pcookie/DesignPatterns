//
//  FlyweightView.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/18.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlyweightView : UIView
{
    @private
    NSArray *flowerList_;
}

@property (nonatomic, retain) NSArray *flowerList;
@end
