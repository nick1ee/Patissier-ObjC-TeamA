//
//  CommentTableViewCell.h
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommentTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *commentUserImageView;

@property (weak, nonatomic) IBOutlet UILabel *commentUserNameLabel;

@property (weak, nonatomic) IBOutlet UILabel *commentUserContentLabel;

@end
