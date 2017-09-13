//
//  ProductCollectionViewController.h
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APIClient.h"

@interface ProductCollectionViewController: UICollectionViewController<GetProduct>

@property (weak, nonatomic) id<GetProduct> delegate;

@property (strong, nonatomic) APIClient *apiClient;

//@property

@end
