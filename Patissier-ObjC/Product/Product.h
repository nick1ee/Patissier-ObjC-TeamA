//
//  Product.h
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#ifndef Product_h
#define Product_h
#import <Foundation/Foundation.h>

@interface NSObject (Product)

@property NSString *identification;

@property NSString *productName;

@property int *productPrice;

@property (assign, nonatomic) NSString *imageurl;

//@property NSString *firstName;


@end


#endif /* Product_h */
