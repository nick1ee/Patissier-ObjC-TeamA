//
//  NSObject+APIClient.h
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIClient.h"

@interface APIClient: NSObject

@property NSString *firstName;

@end


@interface APIClient()

//括號裡面是資料回傳型態
-(void)indexProducts;
//要改成拿回東西的型態
-(void)getProductInformation;



@end



