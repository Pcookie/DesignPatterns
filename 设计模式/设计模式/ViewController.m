//
//  ViewController.m
//  设计模式
//
//  Created by pro_cookie on 2017/10/16.
//  Copyright © 2017年 pro_cookie. All rights reserved.
//

#import "ViewController.h"
#import "BrandingFactory.h"

#import "ChasingGame.h"
#import "StandardCharacterBuilder.h"

#import "TouchConsoleController.h"
#import "GameBoyEmulator.h"
#import "GameGearEmulator.h"

#import "CabDriver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
#pragma mark --- AbstractFactory
#if 0
    BrandingFactory * factory = [BrandingFactory factory];
    //...
    UIView * view = [factory brandedView];
    //... put the view on a proper location in view
    //...
    UIButton * button = [factory brandedMainButton];
    //... put the button on a proper location in view
    
    //...
    UIToolbar * toolbar = [factory brandedToolbar];
#endif
    /******************************************************
    
    builder 和 bridge的区别
     两者很相似，
     区别在于 
     builder存在Director类 比如下面 应该是ChasingGame类 应该是。。不确定 
     bridge 更趋向与在超过1维变化的场景下使用 比如下面 可以emulator变化 up不变 可以emulator不变 up 变
     
    ******************************************************/
#pragma mark --- Builder
#if 0
    // config 根据需要 拿到对应的配置 URL生成 也可以用这种方式 构建者模式
    CharacterBuilder *characterBuilder = [[StandardCharacterBuilder alloc] init];
    ChasingGame *game = [[ChasingGame alloc] init];
    
    Character *player = [game createPlayer:characterBuilder];
    Character *enemy = [game createEnemy:characterBuilder];
    
#endif
#pragma mark --- Bridge
#if 1
    
    // 桥接模式  应用于 超过1维变化的时候  比如 手机品牌 和 手机软件  多对多的情况下 有点类似buildr模式
    TouchConsoleController *touchConsoleController = [TouchConsoleController new];
    
    touchConsoleController.emulator = [GameGearEmulator new];
    [touchConsoleController up];
    [touchConsoleController down];
    
#endif
#pragma mark --- Facade
#if 1
    CabDriver *cabDriver = [CabDriver new];
    [cabDriver driveToLocation:CGPointMake(1, 1)];
#endif
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
