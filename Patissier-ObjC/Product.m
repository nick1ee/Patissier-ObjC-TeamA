//
//  Product.m
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

// MARK: User

@implementation Product

- (instancetype) init:(NSMutableDictionary *)json {
    
    _productId = [json valueForKey: @"id"];
    _productName = [json valueForKey: @"product_name"];
    _productPrice = [json valueForKey: @"product_price"];
    _productImageUrl = [json valueForKey: @"product_Imageurl"];
    
    return self;
    
};


@end
