//
//  LoopScollView.h
//  InfiniteLoop
//
//  Created by yumlive0909 on 15/9/9.
//  Copyright (c) 2015年 yumlive0909. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol LoopScollViewDelegate <NSObject>

/** 点击了滚动图*/
- (void)tapScrollPicture:(int)pictureTag;

@end


@interface LoopScollView : UIView

@property (nonatomic,weak)id<LoopScollViewDelegate> delegate;

/** 传进图片数组*/
- (void)setPictureArray:(NSMutableArray *)picArr;


@end
