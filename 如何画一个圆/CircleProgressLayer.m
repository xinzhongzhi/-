//
//  CircleProgressLayer.m
//  如何画一个圆
//
//  Created by 辛忠志 on 2017/7/31.
//  Copyright © 2017年 辛忠志. All rights reserved.
//

#import "CircleProgressLayer.h"
#import <UIKit/UIKit.h>
@implementation CircleProgressLayer
/*3、重载其绘图方法 drawInContext，并在progress属性变化时让其重绘*/
- (void)drawInContext:(CGContextRef)ctx {
    CGFloat radius = self.bounds.size.width / 2;
    CGFloat lineWidth = 10.0;
    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(radius, radius) radius:radius - lineWidth / 2 startAngle:0.f endAngle:M_PI * 2 * self.progress clockwise:YES];
    CGContextSetRGBStrokeColor(ctx, 0.5, 0.5, 0.9, 1.0);//笔颜色
    CGContextSetLineWidth(ctx, 10);//线条宽度
    CGContextAddPath(ctx, path.CGPath);
    CGContextStrokePath(ctx);
}
- (instancetype)initWithLayer:(CircleProgressLayer *)layer {
    if (self = [super initWithLayer:layer]) {
        self.progress = layer.progress;
    }
    return self;
}
+ (BOOL)needsDisplayForKey:(NSString *)key {
    if ([key isEqualToString:@"progress"]) {
        return YES;
    }
    return [super needsDisplayForKey:key];
}
@end
