//
//  UIButton+Utility.m
//  LCTableBarController
//
//  Created by Lemon on 16/11/10.
//  Copyright © 2016年 LemonChao. All rights reserved.
//

#import "UIButton+Utility.h"

@implementation UIButton (Utility)


#pragma mark -- 按钮上图文混排
- (void)setImagePosition:(ZXImagePosition)postion spacing:(CGFloat)spacing {
    
    CGFloat imageWith = self.imageView.image.size.width;
    CGFloat imageHeight = self.imageView.image.size.height;
    CGFloat labelWidth = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}].width;
    CGFloat labelHeight = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}].height;
    
    //image中心移动的x距离
    CGFloat imageOffsetX = labelWidth / 2 ;
    //image中心移动的y距离
    CGFloat imageOffsetY = labelHeight / 2 + spacing / 2;
    //label中心移动的x距离
    CGFloat labelOffsetX = imageWith/2;
    //label中心移动的y距离
    CGFloat labelOffsetY = imageHeight / 2 + spacing / 2;
    
    switch (postion) {
        case ZXImagePositionLeft:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            break;
            
        case ZXImagePositionRight:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth + spacing/2, 0, -(labelWidth + spacing/2));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageHeight + spacing/2), 0, imageHeight + spacing/2);
            break;
            
        case ZXImagePositionTop:
            self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX, -labelOffsetY, labelOffsetX);
            break;
            
        case ZXImagePositionBottom:
            self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -labelOffsetX, labelOffsetY, labelOffsetX);
            break;
            
        default:
            break;
    }
    
}

@end
