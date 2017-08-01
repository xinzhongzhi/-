//
//  drawView.m
//  如何画一个圆
//
//  Created by 辛忠志 on 2017/7/31.
//  Copyright © 2017年 辛忠志. All rights reserved.
//

#import "drawView.h"
#import "CircleProgressLayer.h"
@implementation drawView

/*重载drawRect的方法*/
- (void)drawRect:(CGRect)rect {
    
    
    
//    CGFloat radius = self.bounds.size.width / 2;
//    CGFloat lineWidth = 10.0;
//    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(radius, radius) radius:radius - lineWidth / 2 startAngle:0.f endAngle:M_PI * 2 * self.progress clockwise:YES];
//    [[UIColor colorWithRed:0.5 green:0.5 blue:0.9 alpha:1.0] setStroke];
//    [path setLineWidth:lineWidth];
//    [path stroke];
    


    
    
    
    /**********下面通过三种方式进行绘制圆   分别为1、贝塞尔曲线绘制 2、CGPathRef绘制 3、CGContextRef绘制。  ************************/
    
    /*通过贝塞尔曲线 UIBezierPath 来绘制圆*/
//    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 200, 200)];
//    [[UIColor colorWithRed:0.5 green:0.5 blue:0.9 alpha:1.0] setStroke];/*设置线的颜色*/
//    /*线的粗度*/
//    [path setLineWidth:10.0];
//    /*绘画的最后一步，它之于绘图的意义如画画的最后上颜料一样。
//     
//     　　渲染分为两种方式：
//     　　１）填充Fill：将路径内部填充渲染
//     　　２）描边Stroke：不填充，只对路径进行渲染*/
//    [path stroke];
    
    
    
//    /*通过CGPathRef 来绘制圆*/
//    //获取上下文
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    //创建可变路径
//    CGMutablePathRef path = CGPathCreateMutable();
//    //添加圆形到路径中(所在路径、不进行变换操作、中心坐标200、200、起点弧度0、终点弧度2PI、画的方向0逆1正)
//    CGPathAddArc(path, NULL, 200, 200, 100, 0, M_PI * 2, 1);
//    //将路径添加到上下文
//    CGContextAddPath(ctx, path);
//    //修改图形状态参数
//    CGContextSetRGBStrokeColor(ctx, 0.5, 0.5, 0.9, 1.0);//笔颜色
//    CGContextSetLineWidth(ctx, 10);//线条宽度
//    //渲染上下文
//    CGContextStrokePath(ctx);
    
    
    
    
    //使用CGContextRef创建路径
//    //获取上下文
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    //绘制路径: 圆形(中心坐标200、200、半径100、起点弧度0、终点弧度2PI、画的方向0逆1正) 第五个参数 是startAngle开始的角度
//    CGContextAddArc(ctx, 200, 200, 100, 0, M_PI *2, 1);
//    /*给当前View一个边框*/
////    CGContextAddRect(ctx, self.bounds);
//    //修改图形状态参数
//    CGContextSetRGBStrokeColor(ctx, 0.5, 0.5, 0.9, 2.0);//笔颜色
//    CGContextSetLineWidth(ctx, 10);//线条宽度
//    //渲染上下文
//    CGContextStrokePath(ctx);
    
    
    
    
    /*下面是绘制一条线*/
    
    
  /*  // 1.取得和当前视图相关联的图形上下文(因为图形上下文决定绘制的输出目标)/
        // 如果是在drawRect方法中调用UIGraphicsGetCurrentContext方法获取出来的就是Layer的上下文
        CGContextRef  ctx=UIGraphicsGetCurrentContext();//不需要*,同id
   
       // 2.绘图(绘制直线), 保存绘图信息
         // 设置起点
       CGContextMoveToPoint(ctx, 20, 100);
      //设置终点
       CGContextAddLineToPoint(ctx, 300, 100);
   
  
        //设置绘图的状态
        //设置线条的颜色为蓝色
      CGContextSetRGBStrokeColor(ctx, 0, 1.0, 0, 1.0);
       //设置线条的宽度
      CGContextSetLineWidth(ctx, 15);
        //设置线条起点和终点的样式为圆角
       CGContextSetLineCap(ctx, kCGLineCapRound);
         //设置线条的转角的样式为圆角
       CGContextSetLineJoin(ctx, kCGLineJoinRound);
         //3.渲染（绘制出一条空心的线）
        CGContextStrokePath(ctx);
   
    //    //注意线条不能渲染为实心的
    //    CGContextFillPath(ctx);
   
    
    
       //设置第二条线
         //设置第二条线的起点
        CGContextMoveToPoint(ctx, 50, 200);
        //设置第二天线的终点(自动把上一条直线的终点当做起点)
         CGContextAddLineToPoint(ctx, 300, 60);
   
         //设置绘图的状态
     //    CGContextSetRGBStrokeColor(ctx, 1.0, 0.7, 0.3, 1.0);
         //第二种设置颜色的方式
         [[UIColor grayColor] set];
         //设置线条的宽度
         CGContextSetLineWidth(ctx, 10);
         //设置线条的起点和终点的样式
         CGContextSetLineCap(ctx, kCGLineCapButt);
    
         //渲染第二条线的图形到view上
         //绘制一条空心的线
         CGContextStrokePath(ctx);
   */

}
//- (id)initWithFrame:(CGRect)frame {
//    self = [super initWithFrame:frame];
//    if (self) {
//        self.circleProgressLayer = [CircleProgressLayer layer];
//        self.circleProgressLayer.frame = self.bounds;        //像素大小比例
//        self.circleProgressLayer.contentsScale = [UIScreen mainScreen].scale;
//        [self.layer addSublayer:self.circleProgressLayer];
//    }
//    return self;
//}
//- (void)setProgress:(CGFloat)progress {
//    self.circleProgressLayer.progress = progress;
//    _progress = progress;
//}



//4、将layer添加到自定义的view中，并在progress属性变化时通知layer
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.circleProgressLayer = [CircleProgressLayer layer];
        self.circleProgressLayer.frame = self.bounds;
        //像素大小比例
        self.circleProgressLayer.contentsScale = [UIScreen mainScreen].scale;
        [self.layer addSublayer:self.circleProgressLayer];
        
        self.progressLabel = [[UILabel alloc]initWithFrame:self.bounds];
        self.progressLabel.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.9 alpha:1.0];
        self.progressLabel.textAlignment = NSTextAlignmentCenter;
        self.progressLabel.font = [UIFont systemFontOfSize:37.0];
        self.progressLabel.text = @"0 %";
        [self addSubview:self.progressLabel];
    }
    return self;
}

- (void)setProgress:(CGFloat)progress {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"progress"];
    ani.duration = 5.0 * fabs(progress - _progress);
    ani.toValue = @(progress);
    ani.removedOnCompletion = YES;
    ani.fillMode = kCAFillModeForwards;
    ani.delegate = self;
    [self.circleProgressLayer addAnimation:ani forKey:@"progressAni"];
    
    self.progressLabel.text = [NSString stringWithFormat:@"%0.f%%", progress * 100];
    _progress = progress;
    //    self.circleProgressLayer.progress = progress;
    //    [self.circleProgressLayer setNeedsDisplay];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    self.circleProgressLayer.progress = self.progress;
}


@end
