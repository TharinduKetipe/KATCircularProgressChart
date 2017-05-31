//
//  ChartCell.h
//  KATCircularProgressChart
//
//  Created by Tharindu Ketipearachchi on 5/30/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KATCircularProgress.h"

@interface ChartCell : UITableViewCell

@property (strong, nonatomic) IBOutlet KATCircularProgress *progressChart;

- (void)setChartDetails ; //set cell properties and data
+ (NSString *)cellIdentifier ; //returns the cell identifier

@end
