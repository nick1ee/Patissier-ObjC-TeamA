//
//  ProductDetailsTableViewCell.m
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "ProductDetailsTableViewCell.h"

@implementation ProductDetailsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupBuyProductButton];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setupBuyProductButton {

    UIButton *button = _buyProductButton;
    
    [button setTitle:@"Add to Cart" forState:UIControlStateNormal];
    
    button.backgroundColor = [UIColor colorWithRed:4.0/255.0 green:107.0/255.0 blue:149.0/255.0 alpha:1.0];
    
    button.tintColor = [UIColor whiteColor];
    
    button.layer.cornerRadius = 2;
    
    button.layer.shadowColor = [[UIColor blackColor] CGColor];
    
    button.layer.shadowOffset = CGSizeMake(0.0, 1.0);
    
}

@end
