//
//  UserManager.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "UserManager.h"

@implementation UserManager

@synthesize currentUser;

+ (instancetype) shared
{
    static UserManager *shared = nil;
    static dispatch_once_t oneToken;
    dispatch_once(&oneToken, ^{
        
        shared = [[UserManager alloc] init];
        
    });
    
    return shared;
}

- (void) fetchProfile {
    
    NSString *urlString = @"http://52.198.40.72/patissier/api/v1/me";
    
    NSString *jsonWebToken = @"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiI1OWI3OTYzNjE1YTdhYzNkMTZhN2FjM2QiLCJleHAiOjE1MzY4MTQ0MTMuODIzLCJpYXQiOjE1MDUyNzg0MTMuODIzNjQsImlzcyI6IjU5MjUxY2IxNDdkNTNiMDg1Y2EwNzY1NCIsInR5cGUiOiJhcHAiLCJ2ZXJzaW9uIjoiMS4wIn0.bajPpx3OrRGMsd6djXmPUuqmKnbqcAVCchUmLCrsxag";
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    [request setURL: [NSURL URLWithString: urlString]];
    
    [request setValue: jsonWebToken forHTTPHeaderField: @"Authorization"];
    
    NSURLSessionConfiguration *defaultConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration: defaultConfiguration];
    
    NSURLSessionDataTask *task = [session dataTaskWithRequest: request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            
            NSLog(@"Failed to fetch user profile.");
            
        }
        
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData: data options:NSJSONReadingMutableContainers error: nil];
        
        NSDictionary *object = [json valueForKey: @"data"];
        
        User *user = [[User alloc] init: object];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            self.currentUser = user;
            
            [self.delegate didFetchedProfile: user];
            
        });

    }];
    
    [task resume];

};

@end
