//
//  ViewController.m
//  如何画一个圆
//
//  Created by 辛忠志 on 2017/7/31.
//  Copyright © 2017年 辛忠志. All rights reserved.
//

#import "ViewController.h"
#import "drawView.h"
@interface ViewController ()
@property(nonatomic) CGFloat lineWidth; //线的宽度
@property(nonatomic) CGLineCap lineCapStyle; //起点和终点样式
@property(nonatomic) CGLineJoin lineJoinStyle; //转角样式
@property (nonatomic) drawView * drawview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.drawview = [[drawView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    self.drawview.progress = 0.3;
    self.drawview.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.drawview];
    
    UISlider * slider = [[UISlider alloc]initWithFrame:CGRectMake(50, 400, 275, 10)];
    [slider addTarget:self action:@selector(changeProgress:) forControlEvents:UIControlEventValueChanged];
    slider.maximumValue = 1.0;
    slider.minimumValue = 0.f;
    slider.value = self.drawview.progress;
    [self.view addSubview:slider];
}

- (void)changeProgress:(UISlider *)slider {
    self.drawview.progress = slider.value;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
