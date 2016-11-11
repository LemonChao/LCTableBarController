//
//  LCTableBar.h
//  LCTableBarController
//
//  Created by Lemon on 16/11/10.
//  Copyright © 2016年 LemonChao. All rights reserved.
//

#import <UIKit/UIKit.h>

#define NORMAL_IMAGE            @"normalpicture"            // normal picture
#define SELECTED_IMAGE          @"selectedpicture"          //selected picture
#define ITEM_TITLE              @"itemtitle"                //item title


@protocol LCTableBarDelegate;
@interface LCTableBar : UIView

@property (nonatomic, weak) id<LCTableBarDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame contentArray:(NSArray *)contentArray;

@end


@protocol LCTableBarDelegate <NSObject>
@optional
- (void)tabBar:(LCTableBar *)tabBar didSelectedIndex:(NSInteger )index;
@end
