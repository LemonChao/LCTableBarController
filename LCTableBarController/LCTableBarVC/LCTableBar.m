//
//  LCTableBar.m
//  LCTableBarController
//
//  Created by Lemon on 16/11/10.
//  Copyright © 2016年 LemonChao. All rights reserved.
//

#import "LCTableBar.h"
#import "UIButton+Utility.h"


@implementation LCTableBar
{
    NSMutableArray *contentMArray;
    UIButton       *currentBtn;
}
- (instancetype)initWithFrame:(CGRect)frame contentArray:(NSArray *)contentArray
{
    self = [super initWithFrame:frame];
    if (contentArray == nil || contentArray.count == 0) return self;
    self.backgroundColor = [UIColor whiteColor];
    
    if (self) {
        contentMArray = [NSMutableArray array];
        [contentMArray setArray:contentArray];
        
        int i = 0;
        for (NSDictionary *dict in contentMArray) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(frame.size.width / contentMArray.count *i , 0,frame.size.width / contentMArray.count , frame.size.height);
            [button addTarget:self action:@selector(clickTabBarItemButton:) forControlEvents:UIControlEventTouchUpInside];
            button.titleLabel.font = [UIFont systemFontOfSize:12];
            button.tag = 1000+i;
            [button setImage:[dict objectForKey:NORMAL_IMAGE] forState:UIControlStateNormal];
            [button setImage:[dict objectForKey:SELECTED_IMAGE] forState:UIControlStateSelected];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [button setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
            [button setTitle:[dict objectForKey:ITEM_TITLE] forState:UIControlStateNormal];
            [button setImagePosition:ZXImagePositionTop spacing:3];
            if (i == 0) {
                button.selected = YES;
                currentBtn = button;
            }

            [self addSubview:button];
            i++;
        }
        
    }
    return self;
    
}

- (void)clickTabBarItemButton:(UIButton *)button
{
    button.selected = YES;
    currentBtn.selected = NO;
    currentBtn = button;
    if (_delegate && [_delegate respondsToSelector:@selector(tabBar:didSelectedIndex:)]) {
        [_delegate tabBar:self didSelectedIndex:button.tag - 1000];
    }
    
}


@end
