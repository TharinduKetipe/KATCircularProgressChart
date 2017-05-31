//
//  KATCircularProgress.m
//  KATCircularProgressChart
//
//  Created by Tharindu Ketipearachchi on 5/15/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

#import "KATCircularProgress.h"

@implementation SliceItem

@end

@interface KATCircularProgress ()

@property (nonatomic, strong) CALayer *baseLayer;

@end

@implementation KATCircularProgress

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubViews];
    }
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];

    if (self) {
        [self initSubViews];
    }
    return self;
}

- (void)initSubViews {
    _sliceItems = [[NSMutableArray alloc] init];
    _itemIndex = 0;
    _startAngle = 1.5 * M_PI;
    _lineWidth = 20;
    _duration = 0.5;

}

- (CALayer *)baseLayer {
    if (_baseLayer) {
        return _baseLayer;
    }

    CALayer *layer = [CALayer layer];
    layer.frame = self.bounds;
    [self.layer addSublayer:layer];
    _baseLayer = layer;
    return _baseLayer;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    [self drawPath:rect];


}


- (void)drawPath:(CGRect)rect {

    if (_baseLayer) {

        [UIView animateWithDuration:_duration animations:^{
            self.baseLayer.opacity = 0.0;
        } completion:^(BOOL finished) {
            [self.baseLayer removeFromSuperlayer];
            self.baseLayer = nil;

            self.startAngle = 1.5 * M_PI;
            self.itemIndex = 0;
            [self drawArcAnimation:rect];
        }];

    } else {
        self.startAngle = 1.5 * M_PI;
        self.itemIndex = 0;
        [self drawArcAnimation:rect];
    }

}

- (void)drawArcAnimation:(CGRect)rect {

    if (self.itemIndex >= self.sliceItems.count) {
        return;
    }

    float total = [self calculateTotal];
    SliceItem *item = self.sliceItems[self.itemIndex];

    UIBezierPath* path = [UIBezierPath bezierPath];
    float angle = (item.itemValue/total) * 2 * M_PI;
    float endAngle = self.startAngle + angle;


    [path addArcWithCenter:CGPointMake(rect.size.width / 2, rect.size.height / 2)
                    radius:rect.size.width/2 - self.lineWidth
                startAngle:self.startAngle
                  endAngle:endAngle
                 clockwise:YES];
    self.startAngle = endAngle;

    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path.CGPath;
    layer.strokeColor = item.itemColor.CGColor;
    layer.fillColor = nil;
    layer.lineWidth = self.lineWidth;
    layer.strokeStart = 0;
    layer.strokeEnd = 1.0;

    [self.baseLayer addSublayer:layer];

    [CATransaction begin];
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.duration = _duration*(angle/(2 * M_PI));
    animation.fromValue = @(0.0);
    animation.toValue = @(1.0);
    [CATransaction setCompletionBlock:^{
        self.itemIndex++;
        [self drawArcAnimation:rect];
    }];
    [layer addAnimation:animation forKey:nil];
    [CATransaction commit];
}

- (void)setLineWidth:(float)lineWidth {
    _lineWidth = lineWidth;
}

- (void)setAnimationDuration:(float)duration {
    _duration = duration;
}


- (void)setSliceItems:(NSMutableArray *)sliceItems {
    _sliceItems = sliceItems;
}

- (void)reloadData {
    [self setNeedsDisplay];
}

- (CGFloat)calculateTotal{
    float total = 0.0;
    for (SliceItem *item in self.sliceItems){
        total += item.itemValue;
    }
    return total;
}

@end
