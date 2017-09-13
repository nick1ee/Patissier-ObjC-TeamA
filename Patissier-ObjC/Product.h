//
//  Product.h
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "Foundation/Foundation.h"

@interface Product : NSObject

@property (strong, nonatomic, readonly) NSString *productId;
@property (strong, nonatomic, readonly) NSString *productName;
@property (strong, nonatomic, readonly) NSString *productPrice;
@property (strong, nonatomic, readonly) NSURL *productImageUrl;

- (instancetype) init: (NSDictionary *) json;

@end
