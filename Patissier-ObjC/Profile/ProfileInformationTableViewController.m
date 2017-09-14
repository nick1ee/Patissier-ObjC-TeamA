//
//  ProfileInformationTableViewController.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "User.h"
#import "UserManager.h"
#import "SegmentedCell.h"
#import "InformationCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "ProfileInformationTableViewController.h"
#import "OrderListTableViewController.h"
#import "ProductCollectionViewController.h"

// MARK: - Component

typedef enum {

    // MARK: Case

    information = 0,
    segmentedControler = 1,
    content = 2

} ProfileComponent;


typedef enum {

    left = 0,
    right = 1

} Segment;

// MARK: - ProfileTableViewController

@interface ProfileInformationTableViewController()

@end

@implementation ProfileInformationTableViewController

// MARK: Segment

// MARK: Property

NSDictionary *unusedFavoriteProviderPool;
NSDictionary *displayingFavoriteControllerPool;
Segment *selectedSegment;
UIButton *leftButton;
UIButton *rightButton;
UserManager *manager;
OrderListTableViewController *orderListTableViewController;
ProductCollectionViewController *productListTableViewController;


- (void)viewDidLoad {
    [super viewDidLoad];

    UINib *infoNib = [UINib nibWithNibName: @"InformationCell" bundle:nil];

    [self.tableView registerNib: infoNib forCellReuseIdentifier: @"InformationCell"];
 
    UINib *segmentNib = [UINib nibWithNibName: @"SegmentedCell" bundle: nil];

    [self.tableView registerNib: segmentNib forCellReuseIdentifier: @"SegmentedCell"];
    
    orderListTableViewController = [[OrderListTableViewController alloc] init];
    
    [self addChildViewController: orderListTableViewController];
    
    [orderListTableViewController didMoveToParentViewController: self];
    
    UICollectionViewFlowLayout *flowlayout = [[UICollectionViewFlowLayout alloc] init];
    
    [flowlayout setItemSize:CGSizeMake(154, 160)];
    
    [flowlayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    productListTableViewController = [[ProductCollectionViewController alloc] initWithCollectionViewLayout: flowlayout];
    
    [self addChildViewController: productListTableViewController];
    
    [productListTableViewController didMoveToParentViewController: self];
    
    selectedSegment = left;
    
    self.tableView.estimatedRowHeight = 300.0;
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    manager = [UserManager shared];
    
    manager.delegate = self;
    
    [manager fetchProfile];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

//    NSInteger component = indexPath.section;
    NSInteger component = indexPath.section;

    if (component == 0) {

        InformationCell *cell = [tableView dequeueReusableCellWithIdentifier: @"InformationCell" forIndexPath: indexPath];

        cell.selectionStyle = UITableViewCellSelectionStyleNone;

        return cell;

    } else if (component == 1) {

        SegmentedCell *cell = [tableView dequeueReusableCellWithIdentifier: @"SegmentedCell" forIndexPath: indexPath];

        cell.selectionStyle = UITableViewCellSelectionStyleNone;

        [cell.leftButton setTitle: @"Favorite" forState: UIControlStateNormal];

        [cell.rightButton setTitle: @"Purchased" forState: UIControlStateNormal];

        [cell.leftButton addTarget: self action: @selector(leftButtonClicked) forControlEvents:UIControlEventTouchUpInside];

        [cell.rightButton addTarget: self action: @selector(rightButtonClicked) forControlEvents:UIControlEventTouchUpInside];

        leftButton = cell.leftButton;

        rightButton = cell.rightButton;

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

        return 250.0;

    }else if (index == 1) {

        return 50.0;

    }else {

        return 500.0;

    }

}


- (void) leftButtonClicked {
    
    selectedSegment = left;
    
    [self.tableView reloadData];

    leftButton.backgroundColor = [[UIColor alloc] initWithRed: 0 / 255.0  green: 0 / 255.0  blue: 0 / 255.0 alpha: 0.2];

    rightButton.backgroundColor = [UIColor clearColor];

}

- (void) rightButtonClicked {
    
    selectedSegment = right;
    
    [self.tableView reloadData];

    leftButton.backgroundColor = [UIColor clearColor];

    rightButton.backgroundColor = [[UIColor alloc] initWithRed: 0 / 255.0  green: 0 / 255.0  blue: 0 / 255.0 alpha: 0.2];

}

- (void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {

    NSInteger index = indexPath.section;

    if (index == 0) {

        InformationCell *displayCell = cell;
        
        displayCell.nameLabel.text = @"你渴望力量嗎？";
        
        [displayCell.pictureImageView sd_setImageWithURL: manager.currentUser.pictureImageUrl];

    } else if (index == 1) {

        return;

    } else {
        
        if (selectedSegment == left) {
            
            [cell.contentView addSubview: productListTableViewController.view];
            
            
        } else {
            
            [cell.contentView addSubview: orderListTableViewController.view];
            
        }

    }
    
}

- (void)didFetchedProfile:(User *)user {
    
    [self.tableView reloadData];
    
}

- (void)failure:(NSError *)error {
    
    NSLog(@"ERROR");
    
}

@end
