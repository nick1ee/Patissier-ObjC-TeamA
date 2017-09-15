//
//  Comment.h
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/14.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Comment : NSObject

@property (strong, nonatomic) NSString *commentUserId;
@property (strong, nonatomic) NSString *commentUserName;
@property (strong, nonatomic) NSString *commentId;
@property (strong, nonatomic) NSString *commentContent;

- (instancetype) init: (NSDictionary *) json;

@end
