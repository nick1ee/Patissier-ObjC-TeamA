//
//  UserManager.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserManager.h"
#import "UserManagerDelegate.h"

@implementation UserManager

+ (instancetype) shared
{
    static UserManager *shared = nil;
    static dispatch_once_t oneToken;
    dispatch_once(&oneToken, ^{
        
        shared = [[UserManager alloc] init];
        
    });
    
    return shared;

}

@end
