//
//  BaseNavController.m
//  LCTableBarController
//
//  Created by Lemon on 17/3/20.
//  Copyright © 2017年 LemonChao. All rights reserved.
//

#import "BaseNavController.h"

@interface BaseNavController ()

@end

@implementation BaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self setNavigationBarHidden:NO animated:YES];
    //barItem 颜色
    self.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};

    //navigationBar 颜色
    self.navigationBar.barTintColor = [UIColor colorWithRed:0 green:170/255.0 blue:136/255.0 alpha:1];
    self.navigationBar.shadowImage = nil;
    //半透明渲染效果
    self.navigationBar.translucent = NO;
    self.navigationBar.barStyle = UIBarStyleDefault; //UIBarStyleDefault
    [self.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsCompact];

    

}

//微信导航渐变透明 没用到
- (UIView *)blurBackView
{
    
    UIView *_blurBackView = [UIView new];
    _blurBackView.frame = CGRectMake(0, -20, self.navigationBar.frame.size.width, 64);
//    _blurBackView.frame = self.navigationBar.bounds;
    CAGradientLayer *gradientLayer = [[CAGradientLayer alloc] init];
//    gradientLayer.frame = CGRectMake(0, 0, SCREEN_WIDTH, 64);
    gradientLayer.frame = CGRectMake(0, 0, self.navigationBar.frame.size.width, 64);
    UIColor *mainColor = [UIColor colorWithRed:0 green:170/255.0 blue:136/255.0 alpha:0.76];
    gradientLayer.colors = @[(__bridge id)mainColor.CGColor, (__bridge id)mainColor.CGColor];
    
    gradientLayer.startPoint = CGPointMake(0, 0);//0x040012
    gradientLayer.endPoint = CGPointMake(0, 1.0);
    [_blurBackView.layer addSublayer:gradientLayer];
    _blurBackView.userInteractionEnabled = NO;
    _blurBackView.alpha = 0.5;//0.5

    return _blurBackView;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
