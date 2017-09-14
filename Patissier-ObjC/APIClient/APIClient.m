//
//  NSObject+APIClient.m
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "APIClient.h"
#import "AFNetworking.h"
#import "Product.h"
#import "Comment.h"

@implementation APIClient

- (void)indexProducts{
    
    NSLog(@"123");
}

- (void)getProductInformation{
    
    NSMutableArray *productsInfo = [[NSMutableArray alloc] init];
    
    NSString *URLString = @"http://52.198.40.72/patissier/products";
    
    [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:URLString parameters:nil error:nil];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiI1OTRlMjJlNGU2Y2I2MDE5ZThjYjYwMTkiLCJleHAiOjE1MzAwOTkyNjUuMzY0LCJpYXQiOjE0OTg1NjMyNjUuMzY0NTksImlzcyI6IjU5MjUxY2IxNDdkNTNiMDg1Y2EwNzY1NCIsInR5cGUiOiJhcHAiLCJ2ZXJzaW9uIjoiMS4wIn0.q6qdIMcoGCYWG8hXcmADCrOO05dy0ffX1nNwgf9o7V8" forHTTPHeaderField:@"Authorization"];
    
    [manager GET:@"http://52.198.40.72/patissier/api/v1/products" parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        
        
        if ([responseObject isKindOfClass:[NSDictionary class]]){
            NSDictionary *data = responseObject;
            NSArray *products = data[@"data"];
            
            
            for(NSDictionary *product in products ) {
                Product *productInformation = [[Product alloc] init];
                
                productInformation.productId = [product objectForKey: @"id"];
                productInformation.productName = [product objectForKey: @"name"];
                productInformation.productPrice = [product objectForKey: @"price"];
                [productsInfo addObject: productInformation];
                //NSLog(@"%@",productInformation.productPrice);
                
            }
            
        }
        
        [self.delegate didGetValue:(productsInfo)];
        
//        NSLog(@"JSON: %@ 成功", responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
//        NSLog(@"Error: %@ 失敗", error);
    }];
    
    //    -(void)didGetValue:(id)value;
    //    -(void)didNotGetValue:(NSString*)value;
}

- (void)getProductComment {

    NSMutableArray *productComments = [[NSMutableArray alloc] init];
    
    NSString *URLString = @"http://52.198.40.72/patissier/api/v1/products/5947974173a7f08ded3e8269/comments";
    
    [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:URLString parameters:nil error:nil];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    NSString *headerResult = [NSString stringWithFormat:@"Bearer %@",[[NSUserDefaults standardUserDefaults] objectForKey:@"jwtToken"]];
    
    [manager.requestSerializer setValue:headerResult forHTTPHeaderField:@"Authorization"];
    
    [manager GET:URLString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        if ([responseObject isKindOfClass:[NSDictionary class]]) {
        
            NSDictionary *data = responseObject;
            
            NSArray *comments = data[@"data"];
            
            NSLog(@"%@ data", comments);
            
            for(NSDictionary *comment in comments) {
            
                Comment *commentDetail = [[Comment alloc] init];
                
                commentDetail.commentId = [comment objectForKey:@"id"];
                
                commentDetail.commentContent = [comment objectForKey:@"text"];
                
                commentDetail.commentUserId = [[comment objectForKey:@"user"] objectForKey:@"id"];
                
                commentDetail.commentUserName = [[comment objectForKey:@"user"] objectForKey:@"name"];
        
                [productComments addObject:commentDetail];
                
            }
            
            [self.commentDelegate didGetValue:(productComments)];
            
            NSLog(@"成功拿到comment %@", productComments);
            
        }
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        NSLog(@"comment 失敗", error);
        
    }];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

@end
