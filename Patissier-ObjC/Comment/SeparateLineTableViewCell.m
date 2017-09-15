//
//  separateLineTableViewCell.m
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "SeparateLineTableViewCell.h"

@implementation SeparateLineTableViewCell

@synthesize titleLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupTitleLabel];
}

- (void)setupTitleLabel {

    UILabel *label = titleLabel;
    
    label.text = @"Comments";
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
