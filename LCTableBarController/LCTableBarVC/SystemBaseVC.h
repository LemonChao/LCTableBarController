//
//  SystemBaseVC.h
//  LCTableBarController
//
//  Created by Lemon on 17/3/29.
//  Copyright © 2017年 LemonChao. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol SystemBaseVCDelegate <NSObject>

@optional
-(void)left_button_event:(UIButton*)sender;
-(void)right_button_event:(UIButton*)sender;
-(void)title_click_event:(UIView*)sender;
@end

@interface SystemBaseVC : UIViewController<SystemBaseVCDelegate>

@end
