//
//  UserAPIClient.h
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <Foundation/Foundation.h>

// MARK: - UserAPIClient

@protocol UserAPIClient <NSObject>

// MARK: Sign In With Facebook

typedef SignInWithFacebookSuccess = (AppToken) -> (void)
typedef SignInWithFacebookFailure = (Error) -> (void)

- (@optional URLSessionTask)signWithFacebook:
    (NSString *) token,
    (SignInWithFacebookSuccess *)success,
    (SignInWithFacebookFailure *)failure;

typedef ReadMeSuccess = (User) -> (void)
typedef ReadMeFailure = (Error) -> (void)

- (@optional URLSessionTask)readMe:
    (ReadMeSuccess *)success,
    (ReadMeFailure *) failure;

@end
