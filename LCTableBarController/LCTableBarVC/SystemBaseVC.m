//
//  SystemBaseVC.m
//  LCTableBarController
//
//  Created by Lemon on 17/3/29.
//  Copyright © 2017年 LemonChao. All rights reserved.
//

#import "SystemBaseVC.h"

@interface SystemBaseVC ()

@end

@implementation SystemBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)navigationShouldPopOnBackButton {
    if ([self respondsToSelector:@selector(left_button_event:)]) {
        [self left_button_event:nil];
        return NO;
    }
    else {
        return YES;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
