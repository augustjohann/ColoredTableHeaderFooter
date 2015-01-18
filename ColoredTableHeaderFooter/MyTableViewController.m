//
//  MyTableViewController.m
//  ColeredTableViewHeaderFooter
//
//  Created by Markus Schmid on 17.01.15.
//  Copyright (c) 2015 Markus Schmid. All rights reserved.
//

#import "MyTableViewController.h"
#import "MyTableViewHeaderFooterView.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *sectionHeaderNib = [UINib nibWithNibName:@"MySectionHeaderView" bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:sectionHeaderNib forHeaderFooterViewReuseIdentifier:@"My Table View Header Footer"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"My Table View Cell" forIndexPath:indexPath];
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    MyTableViewHeaderFooterView *sectionHeaderView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"My Table View Header Footer"];
    switch (section) {
        case 0:
            sectionHeaderView.myView.backgroundColor = [UIColor redColor];
            break;
        case 1:
            sectionHeaderView.myView.backgroundColor = [UIColor blueColor];
            break;
        case 2:
            sectionHeaderView.myView.backgroundColor = [UIColor brownColor];
            break;
        default:
            break;
    }
    return sectionHeaderView;
}

@end
