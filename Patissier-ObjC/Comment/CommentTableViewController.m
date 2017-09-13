//
//  CommentTableViewController.m
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "CommentTableViewController.h"
#import "ProductDetailsTableViewCell.h"
#import "SeparateLineTableViewCell.h"
#import "CommentTableViewCell.h"

typedef enum {
    
    productDetails,
    
    separateLine,
    
    comment

} commentComponent;

@interface CommentTableViewController ()

@end

@implementation CommentTableViewController

NSArray *commentComponents;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    commentComponents = [[NSArray alloc] initWithObjects: @(productDetails), @(separateLine), @(comment), nil];
    
    [self setupTableView];
    
    self.tableView.estimatedRowHeight = 150.0;
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupTableView {
    
    UINib *productDetailsNib = [UINib nibWithNibName: @"ProductDetailsTableViewCell" bundle:nil];
    
    [self.tableView registerNib:productDetailsNib forCellReuseIdentifier: @"ProductDetailsTableViewCell"];
    
    UINib *separateLineNib = [UINib nibWithNibName:@"SeparateLineTableViewCell" bundle:nil];
    
    [self.tableView registerNib:separateLineNib forCellReuseIdentifier:@"SeparateLineTableViewCell"];
    
    UINib *commentNib = [UINib nibWithNibName:@"CommentTableViewCell" bundle:nil];
    
    [self.tableView registerNib:commentNib forCellReuseIdentifier:@"CommentTableViewCell"];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return commentComponents.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ProductDetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductDetailsTableViewCell" forIndexPath:indexPath];
    
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
