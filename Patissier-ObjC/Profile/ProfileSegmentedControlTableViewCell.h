//
//  ProfileSegmentedControlTableViewCell.h
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ProfileSegmentedControlTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;

@end


typedef enum {
    
    left = 0,
    right = 1
    
} Segment;


@protocol ProfileSegmentedControlTableViewCellDelegate <NSObject>

- (void) cell:(ProfileSegmentedControlTableViewCell *)cell didSelect: (NSInteger *)index;

@end
