//
//  ProductDetailsTableViewCell.h
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductDetailsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *productImageView;
@property (weak, nonatomic) IBOutlet UILabel *productNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *productPriceLabel;
@property (weak, nonatomic) IBOutlet UIButton *buyProductButton;

@end
