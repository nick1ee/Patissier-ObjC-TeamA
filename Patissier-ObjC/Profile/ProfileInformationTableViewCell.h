//
//  ProfileInformationTableViewCell.h
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/12.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileInformationTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *placeholderImageView;
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
@property (weak, nonatomic) IBOutlet UIView *nameView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
