//
//  User.h
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "Foundation/Foundation.h"

@interface User : NSObject

@property (strong, nonatomic, readonly) NSString *userId;
@property (strong, nonatomic, readonly) NSString *name;
@property (strong, nonatomic, readonly) NSString *firstName;
@property (strong, nonatomic, readonly) NSString *lastName;
@property (strong, nonatomic, readonly) NSURL *pictureImageUrl;

- (instancetype) init: (NSDictionary *) json;

@end
