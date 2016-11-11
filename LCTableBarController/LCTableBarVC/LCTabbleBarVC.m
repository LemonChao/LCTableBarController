//
//  LCTabbleBarVC.m
//  LCTableBarController
//
//  Created by Lemon on 16/11/10.
//  Copyright © 2016年 LemonChao. All rights reserved.
//

#import "LCTabbleBarVC.h"
#import "ViewController.h"
#import "SecondVC.h"
#import "LCTableBar.h"


@interface LCTabbleBarVC ()<LCTableBarDelegate>
{
    LCTableBar *lcTabBar;
}

@end

@implementation LCTabbleBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ViewController *vc1 = [[ViewController alloc] init];
    SecondVC   *vc2   = [[SecondVC alloc] init];
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    
    self.viewControllers = @[nav1,
                             nav2];
    
    NSDictionary *dict1 = @{NORMAL_IMAGE:[UIImage imageNamed:@"xinwenmoren"],
                            SELECTED_IMAGE:[UIImage imageNamed:@"xinwen"],
                            ITEM_TITLE:@"首页"};
    NSDictionary *dict2 = @{NORMAL_IMAGE:[UIImage imageNamed:@"womoren"],
                            SELECTED_IMAGE:[UIImage imageNamed:@"wo"],
                            ITEM_TITLE:@"我"};
    
    NSArray *contentArr = @[dict1,
                            dict2];
    
    lcTabBar = [[LCTableBar alloc] initWithFrame:self.tabBar.bounds contentArray:contentArr];
    lcTabBar.delegate = self;
    [self.tabBar addSubview:lcTabBar];
}

#pragma mark-  **LCTabBarDelegate Method

- (void)tabBar:(LCTableBar *)tabBar didSelectedIndex:(NSInteger)index
{
    [self setSelectedIndex:index];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
