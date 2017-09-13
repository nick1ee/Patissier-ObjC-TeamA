//
//  UserManager.h
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

// MARK: - UserManager

#import <Foundation/Foundation.h>
#import "UserManagerDelegate.h"

@interface UserManager : NSObject

// MARK: Property
+ (instancetype) shared;

@end

