//
//  separateLineTableViewCell.h
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SeparateLineTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *topLeftSeparatorLineView;

@property (weak, nonatomic) IBOutlet UIView *bottomLeftSeparatorLine;

@property (weak, nonatomic) IBOutlet UIView *topRightSeparatorLineView;

@property (weak, nonatomic) IBOutlet UIView *bottomRightSeparatorLine;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
