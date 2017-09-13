//
//  NSObject+APIClient.h
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol GetProduct

-(void)didGetValue:(id)value;
-(void)didNotGetValue:(NSString*)value;

@end


@interface APIClient: NSObject <GetProduct>
{
    id <GetProduct> delegate;
}

@property (weak, nonatomic) id <GetProduct> delegate;


@property NSString *firstName;

//括號裡面是資料回傳型態
-(void)indexProducts;
//要改成拿回東西的型態

-(void)getProductInformation;


@end




