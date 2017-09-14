//
//  ProductCollectionViewCell.m
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/12.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "ProductCollectionViewCell.h"

@implementation ProductCollectionViewCell

@synthesize likedButton;
@synthesize priceLabel;
@synthesize titleLabel;
@synthesize productImageView;

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setUpProductImageView];
    
    [self setUpPriceLabel];
    
    [self setUpTitleLabel];
    
    [self setUpLikeButton];
    
}

- (void) setUpProductImageView {
    
    productImageView.clipsToBounds = true;
    
    productImageView.contentMode = UIViewContentModeScaleAspectFit;
    
}

- (void) setUpPriceLabel {
    
    priceLabel.font = [UIFont systemFontOfSize: 12.0];
    
    priceLabel.numberOfLines = 1;
    
    priceLabel.text = nil;
    
    priceLabel.textAlignment = NSTextAlignmentRight;
    
    priceLabel.textColor = [[UIColor alloc] initWithRed: 82.0 / 255.0 green: 66.0 / 255.0 blue: 64.0 / 255.0  alpha: 1.0];
    
}

- (void) setUpTitleLabel {
    
    titleLabel.font = [UIFont systemFontOfSize: 14.0];
    
    titleLabel.numberOfLines = 1;
    
    titleLabel.text = nil;
    
    titleLabel.textAlignment = NSTextAlignmentLeft;
    
    titleLabel.textColor = [[UIColor alloc] initWithRed: 82.0 / 255.0 green: 66.0 / 255.0 blue: 64.0 / 255.0  alpha: 1.0];
    
}

-(void) setUpLikeButton {
    
    likedButton.layer.borderColor = [[[UIColor alloc] initWithRed: 165.0 / 255.0 green: 170.0 / 255.0  blue:178.0 / 255.0 alpha: 1.0] CGColor];
    
    likedButton.layer.borderWidth = 0.2;
    
    likedButton.layer.cornerRadius = 4.0;
    
    [likedButton setTitle: nil forState: UIControlStateNormal];
    
    likedButton.tintColor = [[UIColor alloc] initWithRed: 165.0 / 255.0 green: 170.0 / 255.0  blue:178.0 / 255.0 alpha: 1.0];
    
}



@end
