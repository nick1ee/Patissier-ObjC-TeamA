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
#import "ProfileSegmentedControlTableViewCell.h"

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
    
    UINib *infoNib = [UINib nibWithNibName: @"ProfileInformationTableViewCell" bundle:nil];
    
    [self.tableView registerNib: infoNib forCellReuseIdentifier: @"ProfileInformationTableViewCell"];
    
    UINib *segmentNib = [UINib nibWithNibName: @"ProfileSegmentedControlTableViewCell" bundle: nil];
    
    [self.tableView registerNib: segmentNib forCellReuseIdentifier: @"ProfileSegmentedControlTableViewCell"];
    
    self.tableView.estimatedRowHeight = 300.0;
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
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
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        return cell;
        
    } else if (component == 1) {
        
        ProfileSegmentedControlTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"ProfileSegmentedControlTableViewCell" forIndexPath: indexPath];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        cell.delegate = self;
        
        return cell;
        
    } else {
        
        UITableViewCell *cell = [[UITableViewCell alloc] init];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        return cell;
        
    }

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
         
    NSInteger index = indexPath.section;
    
    if (index == 0) {
        
        return 300.0;

    }else if (index == 1) {
        
        return 50.0;
        
    }else {
        
        return self.view.frame.size.height - 350.0;
        
    }
    
}

- (void) cell:(int *)index {
    
    if (index == 0) {
        
        NSLog(@"changed to zero");
        
    } else {
        
        NSLog(@"changed to one");
        
    }
    
}

- (void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger index = indexPath.section;
    
    if (index == 2) {
        
        
        
    } else {
        
        return;
        
    }
    
    
}

@end
