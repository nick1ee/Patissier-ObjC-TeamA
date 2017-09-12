//
//  ProfileInformationTableViewController.h
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserManagerDelegate.h"

@interface ProfileInformationTableViewController : UITableViewController
{
    id <UserManagerDelegate> delegate;
}

@property(weak, nonatomic) id<UserManagerDelegate> delegate;
- (void) cell;

@end
