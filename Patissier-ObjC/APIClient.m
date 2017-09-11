//
//  NSObject+APIClient.m
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "APIClient.h"
#import "AFNetworking.h"

@implementation APIClient

- (void)indexProducts{
    
    NSLog(@"123");
}


- (void)getProductInformation{
    
//    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
//    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
//    
//    NSURL *URL = [NSURL URLWithString:@"http://52.198.40.72/patissier/api/v1/products"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//    
//    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:nil destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
//        NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
//        return [documentsDirectoryURL URLByAppendingPathComponent:[response suggestedFilename]];
//    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
//        NSLog(@"File downloaded to: %@", filePath);
//    }];
//    [downloadTask resume];
    
    NSString *URLString = @"http://52.198.40.72/patissier/api/v1/products";
   // NSDictionary *parameters = @{@"foo": @"bar", @"baz": @[@1, @2, @3]};
    [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:URLString parameters:nil error:nil];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiI1OTRlMjJlNGU2Y2I2MDE5ZThjYjYwMTkiLCJleHAiOjE1MzAwOTkyNjUuMzY0LCJpYXQiOjE0OTg1NjMyNjUuMzY0NTksImlzcyI6IjU5MjUxY2IxNDdkNTNiMDg1Y2EwNzY1NCIsInR5cGUiOiJhcHAiLCJ2ZXJzaW9uIjoiMS4wIn0.q6qdIMcoGCYWG8hXcmADCrOO05dy0ffX1nNwgf9o7V8" forHTTPHeaderField:@"Authorization"];
    
    [manager GET:@"http://52.198.40.72/patissier/api/v1/products" parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"JSON: %@ 成功", responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"Error: %@ 失敗", error);
    }];

    
    
    
    
    
    
    
}

@end
