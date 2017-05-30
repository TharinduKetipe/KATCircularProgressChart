//
//  KATCircularProgress.h
//  KATCircularProgressChart
//
//  Created by Tharindu Ketipearachchi on 5/15/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

#import <UIKit/UIKit.h>

//Slice Item Object.
@interface SliceItem : NSObject

@property (nonatomic, assign) float itemValue;
@property (nonatomic, strong) UIColor *itemColor;

@end

/****************************************************************************/


@interface KATCircularProgress : UIView

@property (nonatomic, strong) NSMutableArray *sliceItems;
@property (nonatomic, assign) float startAngle;
@property (nonatomic, assign) float lineWidth;
@property (nonatomic, assign) float duration;
@property (nonatomic, assign) int itemIndex;

//reload the progress chart after any changes of the sliceItems data.
- (void)reloadData ;
//set the line thickness of the progress chart.
- (void)setLineWidth:(float)lineWidth;
//set the animation duration.
- (void)setAnimationDuration:(float)duration;

@end
