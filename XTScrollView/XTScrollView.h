//
//  XTScrollView.h
//  XTScrollView
//
//  Created by Kelvin on 16/9/16.
//  Copyright © 2016年 Kelvin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XTScrollView;

@protocol XTScrollViewDelegate <NSObject>

@optional
/**
*  图片点击的回调方法
*
*  @param scrollView 监听对象
*  @param index      被点击图片的tag值
*/
- (void)scrollViewDidClickPage:(XTScrollView*)scrollView index:(NSInteger)index;

@end

@interface XTScrollView : UIView

/**
 *  需要显示的图片，需要控制器传递过来
 */
@property (strong, nonatomic) NSArray *imageArray;
/**
 *  占位图片
 */
@property (nonatomic, strong) UIImage *placeHolderImage;
/**
 *  是否竖屏显示scrollview，默认是no
 */
@property (assign, nonatomic, getter=isScrollDirectionPortrait) BOOL scrollDirectionPortrait;
/**
*  pageControl
*/
@property (weak, nonatomic, readonly) UIPageControl *pageControl;
/**
 *  需要显示的图片，需要控制器传递过来
 */
@property (assign, nonatomic) NSTimeInterval delayTime;
/**
*  图片点击的代理
*/
@property (weak,nonatomic) id <XTScrollViewDelegate> delegate;
/**
 *  是否自动滚动 NO: 自动滚动  YES:停止自动滚动
 */
@property (assign, nonatomic) BOOL stopAutoScroll;

@end
