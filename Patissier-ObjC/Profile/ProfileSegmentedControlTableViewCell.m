//
//  ProfileSegmentedControlTableViewCell.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "ProfileSegmentedControlTableViewCell.h"

// MARK: - ProfileSegmentedControlTableViewCellDelegate

@implementation ProfileSegmentedControlTableViewCell

@synthesize leftButton;
@synthesize rightButton;



- (void)awakeFromNib {
    [super awakeFromNib];
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setUpBackgroundView {
    
    self.contentView.backgroundColor = [[UIColor alloc] initWithRed: 255.0 / 255.0 green: 94.0 / 255.0 blue: 89.0 / 255.0 alpha: 1.0];
    
}

- (void) setUpLeftButton {
    
    [leftButton addTarget:self.leftButton action:(leftDidSelect) forControlEvents: UIControlEventTouchUpInside]
    
    [leftButton setTitle:@"Favorite" forState:UIControlEventTouchUpInside]
    
    
}

@end
