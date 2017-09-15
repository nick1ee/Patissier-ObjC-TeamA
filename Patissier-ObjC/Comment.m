//
//  Comment.m
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/14.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "Comment.h"

@implementation Comment

- (instancetype) init:(NSMutableDictionary *)json {
    
    _commentId = [json valueForKey: @"id"];
    _commentContent = [json valueForKey:@"text"];
    _commentUserId = [[json valueForKey:@"user"] valueForKey:@"id"];
    _commentUserName = [[json valueForKey:@"name"] valueForKey:@"name"];
    
    return self;
    
};

@end
