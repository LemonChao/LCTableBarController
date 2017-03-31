//
//  CustomVC.m
//  LCTableBarController
//
//  Created by Lemon on 17/3/20.
//  Copyright © 2017年 LemonChao. All rights reserved.
//

#import "CustomVC.h"
#import "UIViewController+BackButtonHandler.h"

@interface CustomVC ()

@end

@implementation CustomVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的";

    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)left_button_event:(UIButton *)sender {
    NSLog(@"123456");
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
