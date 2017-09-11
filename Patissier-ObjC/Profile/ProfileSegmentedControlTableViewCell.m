//
//  ProfileSegmentedControlTableViewCell.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "ProfileSegmentedControlTableViewCell.h"

// MARK: - ProfileSegmentedControlTableViewCellDelegate

@protocol ProfileSegmentedControlTableViewCellDelegate <NSObject>

@required
- (void) cell;

@end

@implementation ProfileSegmentedControlTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
