//
//  ZYView.m
//  图形上下文
//
//  Created by 章芝源 on 16/1/5.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ZYView.h"

@implementation ZYView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *bzrPath = [UIBezierPath bezierPath];
    [bzrPath moveToPoint:CGPointMake(100, 190)];
    [bzrPath addLineToPoint:CGPointMake(100, 10)];
    
    //保存上下问信息到栈
    CGContextSaveGState(ctx);
    
    
    CGContextAddPath(ctx, bzrPath.CGPath);
    CGContextSetLineWidth(ctx, 10);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    [[UIColor redColor]setStroke];
    CGContextAddPath(ctx, bzrPath.CGPath);
    CGContextStrokePath(ctx);

    
    bzrPath = [UIBezierPath bezierPath];
    
    [bzrPath moveToPoint:CGPointMake(0, 100)];
    [bzrPath addLineToPoint:CGPointMake(200, 100)];
    

    CGContextAddPath(ctx, bzrPath.CGPath);
    //从上下文栈拿出绘图信息
    CGContextRestoreGState(ctx);
    
    CGContextStrokePath(ctx);
}


@end
