//
//  drawView.h
//  如何画一个圆
//
//  Created by 辛忠志 on 2017/7/31.
//  Copyright © 2017年 辛忠志. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CircleProgressLayer.h"
@interface drawView : UIView
@property (nonatomic, assign) CGFloat progress;
@property (nonatomic, strong) UILabel * progressLabel;
@property (strong,nonatomic) CircleProgressLayer * circleProgressLayer;
@end
