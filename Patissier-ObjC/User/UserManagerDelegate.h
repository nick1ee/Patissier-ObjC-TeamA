//
//  UserManagerDelegate.h
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserManager.h"

// MARK: - UserManagerDelegate

@protocol UserManagerDelegate <NSObject>

- (void) didFetchedProfile:(NSMutableDictionary *) profile;

- (void) failure:(NSError *) error;

@end
