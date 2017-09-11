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
{
    id delegate;
}

- (void) cell;

@end
