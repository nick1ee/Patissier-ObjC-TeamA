//
//  ProfileSegmentedControlTableViewCell.h
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "ProfileSegmentedControlTableViewCellDelegate.h"

@interface ProfileSegmentedControlTableViewCell : UITableViewCell
{
    id <ProfileSegmentedControlTableViewCellDelegate> delegate;
}

typedef enum {
    
    left = 0,
    right = 1
    
} Segment;

@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) id<ProfileSegmentedControlTableViewCellDelegate> delegate;
@property (nonatomic, assign, readwrite) Segment *selectedSegment;

@end

