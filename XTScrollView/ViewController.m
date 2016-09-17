//
//  ViewController.m
//  XTScrollView
//
//  Created by Kelvin on 16/9/16.
//  Copyright © 2016年 Kelvin. All rights reserved.
//

#import "ViewController.h"
#import "XTScrollView.h"

@interface ViewController () <XTScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    XTScrollView *scrollView = [[XTScrollView alloc] initWithFrame:CGRectMake(30, 100, 300, 100)];
    [self.view addSubview:scrollView];
    scrollView.delegate = self;
    scrollView.delayTime = 2;
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
    scrollView.pageControl.pageIndicatorTintColor = [UIColor grayColor];
    
    //需要显示的所有图片
    scrollView.placeHolderImage = [UIImage imageNamed:@"4"];
    scrollView.imageArray = @[
                              @"http://img3.imgtn.bdimg.com/it/u=2546610023,3120506294&fm=206&gp=0.jpg",
                              @"http://img4.imgtn.bdimg.com/it/u=4236942158,2307642402&fm=206&gp=0.jpg",
                              @"http://img5.imgtn.bdimg.com/it/u=1589956140,1606448699&fm=206&gp=0.jpg",
                              @"http://img3.imgtn.bdimg.com/it/u=4271053251,2424464488&fm=206&gp=0.jpg",
                              ];

}

#pragma mark - XTScrollViewDelegate
- (void)scrollViewDidClickPage:(XTScrollView *)scrollView index:(NSInteger)index
{
    NSLog(@"%zd", index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
