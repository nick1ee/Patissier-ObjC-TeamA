//
//  Product.h
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "Foundation/Foundation.h"

@interface Product : NSObject

@property (strong, nonatomic) NSString *productId;
@property (strong, nonatomic) NSString *productName;
@property (strong, nonatomic) NSString *productPrice;
//@property (strong, nonatomic) NSURL* productImageUrl;
- (NSURL *) imageURL;

- (instancetype) init: (NSDictionary *) json;

@end
