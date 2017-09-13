//
//  ProfileInformationTableViewController.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "UserManagerDelegate.h"
#import "ProfileInformationTableViewController.h"
#import "InformationCell.h"
#import "SegmentedCell.h"

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

NSArray *components;
NSDictionary *unusedFavoriteProviderPool;
NSDictionary *displayingFavoriteControllerPool;
Segment *selectedSegment;
UIButton *leftButton;
UIButton *rightButton;


- (void)viewDidLoad {
    [super viewDidLoad];

    components = [[NSArray alloc] initWithObjects:
                  @(information),
                  @(segmentedControler),
                  @(content),
                  nil];

    selectedSegment = left;

    UINib *infoNib = [UINib nibWithNibName: @"InformationCell" bundle:nil];

    [self.tableView registerNib: infoNib forCellReuseIdentifier: @"InformationCell"];
 
    UINib *segmentNib = [UINib nibWithNibName: @"SegmentedCell" bundle: nil];

    [self.tableView registerNib: segmentNib forCellReuseIdentifier: @"SegmentedCell"];

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

//    NSInteger component = indexPath.section;
    NSInteger component = indexPath.section;

    if (component == 0) {

        InformationCell *cell = [tableView dequeueReusableCellWithIdentifier: @"InformationCell" forIndexPath: indexPath];

        cell.selectionStyle = UITableViewCellSelectionStyleNone;

        return cell;

    } else if (component == 1) {

        SegmentedCell *cell = [tableView dequeueReusableCellWithIdentifier: @"SegmentedCell" forIndexPath: indexPath];

        cell.selectionStyle = UITableViewCellSelectionStyleNone;

        [cell.leftButton setTitle: @"Favorited" forState: UIControlStateNormal];

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

        return self.view.frame.size.height - 350.0;

    }

}


- (void) leftButtonClicked {

    leftButton.backgroundColor = [[UIColor alloc] initWithRed: 0 / 255.0  green: 0 / 255.0  blue: 0 / 255.0 alpha: 0.2];

    rightButton.backgroundColor = [UIColor clearColor];

}

- (void) rightButtonClicked {

    leftButton.backgroundColor = [UIColor clearColor];

    rightButton.backgroundColor = [[UIColor alloc] initWithRed: 0 / 255.0  green: 0 / 255.0  blue: 0 / 255.0 alpha: 0.2];

}

- (void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {

    NSInteger index = indexPath.section;

    if (index == 2) {



    } else {

        return;

    }


}

@end
