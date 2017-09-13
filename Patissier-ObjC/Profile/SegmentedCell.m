//
//  SegmentedCell.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "SegmentedCell.h"

@implementation SegmentedCell

@synthesize leftButton;
@synthesize rightButton;

- (void)awakeFromNib {
    [super awakeFromNib];

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

    [leftButton setTitle: @"Favorite" forState: UIControlStateNormal];

    [leftButton setTitleColor: [UIColor whiteColor] forState:UIControlStateNormal];

    leftButton.backgroundColor = [[UIColor alloc] initWithRed: 0 / 255.0  green: 0 / 255.0  blue: 0 / 255.0 alpha: 0.2];

    leftButton.layer.cornerRadius = 4.0;

    leftButton.titleLabel.font = [UIFont systemFontOfSize: 13.0];

}

- (void) setUpRightButton {

    [rightButton setTitle: @"Purchased" forState: UIControlStateNormal];

    [rightButton setTitleColor: [UIColor whiteColor] forState:UIControlStateNormal];

    rightButton.backgroundColor = [UIColor clearColor];

    rightButton.layer.cornerRadius = 4.0;

    rightButton.titleLabel.font = [UIFont systemFontOfSize: 13.0];

}

@end
