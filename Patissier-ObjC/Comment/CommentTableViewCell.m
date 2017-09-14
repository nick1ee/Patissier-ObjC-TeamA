//
//  CommentTableViewCell.m
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "CommentTableViewCell.h"

@implementation CommentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupCommentUserImegeView];
    
}

- (void)setupCommentUserImegeView {

    UIImageView *image = _commentUserImageView;
    
    image.layer.cornerRadius = image.frame.size.width/2;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
