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
@synthesize selectedSegment;

- (void)awakeFromNib {
    [super awakeFromNib];
    
    selectedSegment = left;
    
    [self setUpBackgroundView];
    
    [self setUpLeftButton];
    
    [self setUpRightButton];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setUpBackgroundView {
    
    self.contentView.backgroundColor = [[UIColor alloc] initWithRed: 255.0 / 255.0 green: 94.0 / 255.0 blue: 89.0 / 255.0 alpha: 1.0];
    
}

- (void) setUpLeftButton {
    
    [leftButton addTarget: self.leftButton action: @selector(leftDidSelect) forControlEvents: UIControlEventTouchUpInside];
    
    [leftButton setTitle: @"Favorite" forState: UIControlStateNormal];
    
    [leftButton setTitleColor: [UIColor whiteColor] forState:UIControlStateNormal];
    
    leftButton.backgroundColor = [[UIColor alloc] initWithRed: 0 / 255.0  green: 0 / 255.0  blue: 0 / 255.0 alpha: 0.2];
    
    leftButton.layer.cornerRadius = 4.0;
    
    leftButton.titleLabel.font = [UIFont systemFontOfSize: 13.0];

}

- (void) setUpRightButton {
    
    [rightButton addTarget: self.leftButton action: @selector(rightDidSelect) forControlEvents: UIControlEventTouchUpInside];
    
    [rightButton setTitle: @"Purchased" forState: UIControlStateNormal];
    
    [rightButton setTitleColor: [UIColor whiteColor] forState:UIControlStateNormal];
    
    rightButton.backgroundColor = [UIColor clearColor];
    
    rightButton.layer.cornerRadius = 4.0;
    
    rightButton.titleLabel.font = [UIFont systemFontOfSize: 13.0];
    
}

- (void) leftDidSelect {
    
    leftButton.backgroundColor = [[UIColor alloc] initWithRed: 0 / 255.0  green: 0 / 255.0  blue: 0 / 255.0 alpha: 0.2];
    
    rightButton.backgroundColor = [UIColor clearColor];
    
    [delegate cell: 0];

}

- (void) rightDidSelect {
    
    leftButton.backgroundColor = [UIColor clearColor];
    
    rightButton.backgroundColor = [[UIColor alloc] initWithRed: 0 / 255.0  green: 0 / 255.0  blue: 0 / 255.0 alpha: 0.2];
    
    [delegate cell: 1];
    
}

@end
