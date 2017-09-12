//
//  User.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>

// MARK: User

typedef struct
{
    __unsafe_unretained NSString *userId;
    __unsafe_unretained NSString *name;
    __unsafe_unretained NSString *firstName;
    __unsafe_unretained NSString *lastName;
    __unsafe_unretained NSURL *pictureImageUrl;
    
} User;
