//
//  ViewController.m
//  KATCircularProgressChart
//
//  Created by Tharindu Ketipearachchi on 5/15/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

#import "ViewController.h"
#import "KATCircularProgress.h"

@interface ViewController () {

 }

@property (strong, nonatomic) IBOutlet KATCircularProgress *ProgressChart;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    [self addSliceItems];//Create Slice objects and add to sliceItems Array.
    [self.ProgressChart setLineWidth:30.0]; // Set Line thickness of the chart.
    [self.ProgressChart setAnimationDuration:2.5]; // Set Animation Duration.
    [self.ProgressChart reloadData]; // reload the chart.

}


- (void)addSliceItems {
    //clear the sliceItems array
    [self.ProgressChart.sliceItems removeAllObjects];
    
    //Create Slice items with value and section color
    SliceItem *item1 = [[SliceItem alloc] init];
    item1.itemValue = 50.0; // value should be a float value
    item1.itemColor = [UIColor blueColor]; // color should be a UIColor value

    SliceItem *item2 = [[SliceItem alloc] init];
    item2.itemValue = 100.0;
    item2.itemColor = [UIColor greenColor];

    SliceItem *item3 = [[SliceItem alloc] init];
    item3.itemValue = 150.0;
    item3.itemColor = [UIColor yellowColor];

    //Add SliceItems objects to the sliceItems NSMutable array of KATProgressChart.
    [self.ProgressChart.sliceItems addObject:item1];
    [self.ProgressChart.sliceItems addObject:item2];
    [self.ProgressChart.sliceItems addObject:item3];

}

- (IBAction)didTapStart:(id)sender {
    [self.ProgressChart reloadData];
}

- (IBAction)didTapChartList:(id)sender {
}
@end
