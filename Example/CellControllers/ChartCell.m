//
//  ChartCell.m
//  KATCircularProgressChart
//
//  Created by Tharindu Ketipearachchi on 5/30/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

#import "ChartCell.h"

@implementation ChartCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)prepareForReuse {
    [super prepareForReuse];
    [self.progressChart.sliceItems removeAllObjects];//Clear the slice items array before use the new cell.
}

- (void)setChartDetails {
    //Clear the slice items array.
    [self.progressChart.sliceItems removeAllObjects];

    //set bar thickness
    [self.progressChart setLineWidth:30.0];
    //set animation duration
    [self.progressChart setAnimationDuration:1.5];

    //Create Slice Item objects.
    SliceItem *item1 = [[SliceItem alloc] init];
    item1.itemValue = 107.5;
    item1.itemColor = [UIColor greenColor];

    SliceItem *item2 = [[SliceItem alloc] init];
    item2.itemValue = 202.0;
    item2.itemColor = [UIColor orangeColor];

    SliceItem *item3 = [[SliceItem alloc] init];
    item3.itemValue = 55.0;
    item3.itemColor = [UIColor redColor];

    SliceItem *item4 = [[SliceItem alloc] init];
    item4.itemValue = 37.5;
    item4.itemColor = [UIColor yellowColor];

    SliceItem *item5 = [[SliceItem alloc] init];
    item5.itemValue = 200.0;
    item5.itemColor = [UIColor blueColor];

    //add objects to the sliceItems array.
    [self.progressChart.sliceItems addObject:item1];
    [self.progressChart.sliceItems addObject:item2];
    [self.progressChart.sliceItems addObject:item3];
    [self.progressChart.sliceItems addObject:item4];
    [self.progressChart.sliceItems addObject:item5];

    //reload the chart
    [self.progressChart reloadData];
}

+ (NSString *)cellIdentifier {
    return @"chartCell";
}

@end
