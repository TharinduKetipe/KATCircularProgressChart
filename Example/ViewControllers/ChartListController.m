//
//  ChartListController.m
//  KATCircularProgressChart
//
//  Created by Tharindu Ketipearachchi on 5/30/17.
//  Copyright © 2017 Tharindu Ketipearachchi. All rights reserved.
//

#import "ChartListController.h"
#import "ChartCell.h"

@interface ChartListController ()

@end

@implementation ChartListController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChartCell *cell = [tableView dequeueReusableCellWithIdentifier:[ChartCell cellIdentifier] forIndexPath:indexPath];
    [cell setChartDetails];
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}

- (IBAction)didTapBackButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
