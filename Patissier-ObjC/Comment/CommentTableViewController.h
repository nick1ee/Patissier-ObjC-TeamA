//
//  CommentTableViewController.h
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APIClient.h"

@interface CommentTableViewController : UITableViewController

@property (weak, nonatomic) id<GetCommentDelegate> commentDelegate;

@property (strong, nonatomic) APIClient *apiClient;

@property (weak, nonatomic) NSString *productId;

@property (weak, nonatomic) NSString *productName;

@property (weak, nonatomic) NSNumber *productPrice;

@end
