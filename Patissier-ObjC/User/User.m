//
//  User.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

// MARK: User

@implementation User

- (instancetype) init:(NSMutableDictionary *)json {
    
    _userId = [json valueForKey: @"id"];
    _firstName = [json valueForKey: @"first_name"];
    _lastName = [json valueForKey: @"last_name"];
    _name = [json valueForKey: @"name"];
    
    NSURL *imageUrl = [NSURL URLWithString: @"https://c1.staticflickr.com/5/4013/4452629067_c6d5388622_b.jpg"];
    _pictureImageUrl = imageUrl;
    
    return self;
    
};


@end
