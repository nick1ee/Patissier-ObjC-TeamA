//
//  ProfileInformationTableViewController.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "UserManagerDelegate.h"
#import "ProfileInformationTableViewController.h"
#import "ProfileInformationTableViewCell.h"

// MARK: - Component

typedef enum {
    
    // MARK: Case
    
    information = 0,
    segmentedControler = 1,
    content = 2
    
} ProfileComponent;

// MARK: - ProfileTableViewController

@implementation ProfileInformationTableViewController

// MARK: Segment

// MARK: Property

NSArray *components;
NSDictionary *unusedFavoriteProviderPool;
NSDictionary *displayingFavoriteControllerPool;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    components = [[NSArray alloc] initWithObjects:
                  @(information),
                  @(segmentedControler),
                  @(content),
                  nil];
    
    UINib *nib = [UINib nibWithNibName:@"ProfileInformationTableViewCell" bundle:nil];
    
    [self.tableView registerNib: nib forCellReuseIdentifier:@"ProfileInformationTableViewCell"];
    
//    [self.tableView.estimatedRowHeight = [];
//    
//    [self.tableView.rowHeight = UITableViewAutomaticDimension];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return components.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger component = indexPath.section;
    
    if (component == 0) {
     
        ProfileInformationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"ProfileInformationTableViewCell" forIndexPath: indexPath];
        
        return cell;
        
    } else if (component == 1) {
        
        
    } else {
        
        
    }

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
         
    return 400.0;
    
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
