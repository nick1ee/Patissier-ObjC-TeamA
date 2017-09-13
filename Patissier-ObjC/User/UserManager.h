//
//  UserManager.h
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

// MARK: - UserManager

#import "User.h"
#import <Foundation/Foundation.h>

// MARK: - UserManagerDelegate

@protocol UserManagerDelegate <NSObject>

- (void) didFetchedProfile:(User *) user;
- (void) failure:(NSError *) error;

@end


@interface UserManager : NSObject

// MARK: Property
@property(weak, nonatomic) id<UserManagerDelegate> delegate;
@property(strong, nonatomic, readwrite) User *currentUser;

// MARK: Method
+ (instancetype) shared;
- (void)fetchProfile;

@end

