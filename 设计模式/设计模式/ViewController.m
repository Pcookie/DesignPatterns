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

#import "UIImage+Transform.h"
#import "UIImage+Shadow.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"
#import "DecoratorView.h"

#import "Avatar.h"
#import "MetalArmor.h"
#import "CrystalShield.h"
#import "SwordAttack.h"
#import "MagicFireAttack.h"
#import "LightningAttack.h"

#import "ReubenSandwich.h"

#import "CustomTextField.h"
#import "NumericInputValidator.h"
#import "AlphaInputValidator.h"

@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic, retain) CustomTextField *numericTextField;
@property (nonatomic, retain) CustomTextField *alphaTextField;
@end

@implementation ViewController

- (CustomTextField *)numericTextField {
    if (!_numericTextField) {
        _numericTextField = [[CustomTextField alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
        _numericTextField.delegate = self;
        _numericTextField.inputValidator = [[NumericInputValidator alloc] init];
        _numericTextField.backgroundColor = [UIColor yellowColor];
    }
    return _numericTextField;
}
- (CustomTextField *)alphaTextField {
    if (!_alphaTextField) {
        _alphaTextField = [[CustomTextField alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
        _alphaTextField.delegate = self;
        _alphaTextField.inputValidator = [[AlphaInputValidator alloc] init];
        _alphaTextField.backgroundColor = [UIColor yellowColor];
    }
    return _alphaTextField;
}
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
#if 0
    
    // 桥接模式  应用于 超过1维变化的时候  比如 手机品牌 和 手机软件  多对多的情况下 有点类似buildr模式
    TouchConsoleController *touchConsoleController = [TouchConsoleController new];
    
    touchConsoleController.emulator = [GameGearEmulator new];
    [touchConsoleController up];
    [touchConsoleController down];
    
#endif
#pragma mark --- Facade
#if 0
    CabDriver *cabDriver = [CabDriver new];
    [cabDriver driveToLocation:CGPointMake(1, 1)];
#endif
    
#pragma mark --- Decorator
#if 0
    // load the original image
    UIImage *image = [UIImage imageNamed:@"1.png"];
    // create a transformation
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(0 , 0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    // a true subclass approach
    id <ImageComponent> transformedImage = [[ImageTransformFilter alloc] initWithImageComponent:image transform:finalTransform];
    id <ImageComponent> finalImage = [[ImageShadowFilter alloc] initWithImageComponent:image];
    /*
     // a category approach
     // add transformation
     UIImage *transformedImage = [image imageWithTransform:finalTransform];
     
     // add shadow
     id <ImageComponent> finalImage = [transformedImage imageWithDropShadow];
     
     // category approach in one line
     //id <ImageComponent> finalImage = [[image imageWithTransform:finalTransform] imageWithDropShadow];
     */
    
    // create a new image view
    // with a filtered image
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    decoratorView.backgroundColor = [UIColor yellowColor];
    [decoratorView setImage:finalImage];
    [self.view addSubview:decoratorView];
#endif
#pragma mark --- ChainOfResponsibility
#if 0
    // create a new avatar
    AttackHandler *avatar = [[Avatar alloc] init];
    
    // put it in metal armor
    AttackHandler *metalArmoredAvatar = [[MetalArmor alloc] init];
    [metalArmoredAvatar setNextAttackHandler:avatar];
    
    // then add a crytal shield
    // to the avatar who's in
    // a metal armor
    AttackHandler *superAvatar = [[CrystalShield alloc] init];
    [superAvatar setNextAttackHandler:metalArmoredAvatar];
    
    // ... some other actions
    
    // attack the avatar with
    // a sword
    Attack *swordAttack = [[SwordAttack alloc] init];
    [superAvatar handleAttack:swordAttack];
    
    // then attack the avatar with
    // magic fire
    Attack *magicFireAttack = [[MagicFireAttack alloc] init];
    [superAvatar handleAttack:magicFireAttack];
    
    // now there is a new attack
    // with lightning...
    Attack *lightningAttack = [[LightningAttack alloc] init];
    [superAvatar handleAttack:lightningAttack];
    
    // ... further actions
#endif
#pragma mark --- TemplateMethod
#if 0
    ReubenSandwich * sandwich = [[ReubenSandwich alloc] init];
    [sandwich make];
#endif
#pragma mark --- Strategy
#if 1
    [self.view addSubview:self.numericTextField];
    [self.view addSubview:self.alphaTextField];
#endif
}

#pragma mark UITextFieldDelegate methods

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    //if (textField == numericTextField)
    //{
    // validate [textField text] and make sure
    // the value is numeric
    //}
    //else if (textField == alphaTextField)
    //{
    // validate [textField text] and make sure
    // the value contains only letters
    //}
    
    if ([textField isKindOfClass:[CustomTextField class]])
    {
        [(CustomTextField*)textField validate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
