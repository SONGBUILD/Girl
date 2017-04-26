//
//  ViewController.m
//  九宫格布局
//
//  Created by WD on 2017/4/26.
//  Copyright © 2017年 WD. All rights reserved.
//

#import "ViewController.h"
#import "SDAutoLayout.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    CGFloat screentWidth = [UIScreen mainScreen].bounds.size.width;
    NSMutableArray *images = [NSMutableArray array];
    NSArray *imageNames = @[@"girl1",@"girl2",@"girl3",@"girl4"];
    for (int i = 0; i<4; i++) {
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageNames[i]]];
        [self.view addSubview:imageView];
        imageView.sd_layout.heightIs(screenHeight/2);
        [images addObject:imageView];
    }

    
    [self.view setupAutoMarginFlowItems:images  withPerRowItemsCount:2 itemWidth:screentWidth/2 verticalMargin:0 verticalEdgeInset:0 horizontalEdgeInset:0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
