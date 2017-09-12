//
//  ProductionCollectionView.m
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/12.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "ProductionCollectionView.h"

@implementation ProductionCollectionView


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        //取得xibView 使用Name來取得
        UIView *xibView = [[[NSBundle mainBundle] loadNibNamed:@"ProductGridCollectionViewCell"
                                                         owner:self
                                                       options:nil]
                           objectAtIndex:0];
        //設定該xibView的Frame
        xibView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        xibView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //將xibView加入
        [self addSubview: xibView];
    }
    return self;
}



@end
