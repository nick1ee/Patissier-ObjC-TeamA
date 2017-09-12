//
//  ProfileInformationTableViewCell.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/12.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "ProfileInformationTableViewCell.h"

@implementation ProfileInformationTableViewCell

@synthesize placeholderImageView;
@synthesize pictureImageView;
@synthesize nameView;
@synthesize nameLabel;

- (void)awakeFromNib {
    [super awakeFromNib];

    [self setUpPlaceholderImageView];
    
    [self setUpPictureImageView];
    
    [self setUpNameView];
    
    [self setUpNameLabel];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setUpPlaceholderImageView {
    
    placeholderImageView.backgroundColor = [UIColor whiteColor];
    
    placeholderImageView.contentMode = UIViewContentModeCenter;
    
    placeholderImageView.image = [[UIImage alloc] initWithContentsOfFile:@"icon-placeholder"];
    
    placeholderImageView.tintColor = [[UIColor alloc]initWithRed: 165.0 / 255.0 green: 179.0 / 255.0 blue: 178.0 / 255.0 alpha: 1.0];
}

- (void) setUpPictureImageView {
    
    pictureImageView.clipsToBounds = true;
    
    pictureImageView.contentMode = UIViewContentModeScaleAspectFill;
    
}

- (void) setUpNameView {
    
    nameView.backgroundColor = [[UIColor alloc] initWithRed: 82.0 / 255.0 green: 66.0 / 255.0 blue: 64.0 / 255.0 alpha: 0.75];
    
}

- (void) setUpNameLabel {
    
    nameLabel.font = [UIFont fontWithName: @"Georgia" size: 18.0];
    
    nameLabel.layer.shadowColor = [UIColor .blackColor CGColor];
    
    nameLabel.layer.shadowRadius = 2.0;
    
    nameLabel.layer.shadowOffset = CGSizeMake(0.0, 1.0);
    
    nameLabel.layer.shadowOpacity = 0.5;
    
    nameLabel.text = nil;
    
    nameLabel.textAlignment = NSTextAlignmentCenter;
    
    nameLabel.textColor = [UIColor whiteColor];

}

@end
