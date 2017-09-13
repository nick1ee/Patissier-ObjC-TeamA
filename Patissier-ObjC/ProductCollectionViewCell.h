//
//  ProductCollectionViewCell.h
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/12.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIButton *likedButton;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *productImageView;


@end
