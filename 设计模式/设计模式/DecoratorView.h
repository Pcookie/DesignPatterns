//
//  DecoratorView.h
//  设计模式
//
//  Created by pro_cookie on 2017/10/17.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface DecoratorView : UIView
{
    @private
    UIImage *image_;
}

@property (nonatomic, retain) UIImage *image;

@end
