//
//  OrderListTableViewController.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "OrderListTableViewController.h"

@interface OrderListTableViewController ()

@end

@implementation OrderListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 5;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    NSInteger index = indexPath.row + 1;
    
    NSString *indexAsString = [@(index) stringValue];
    
    cell.textLabel.text = [@"訂單編號：" stringByAppendingString: indexAsString];
    
    return cell;
}


@end
