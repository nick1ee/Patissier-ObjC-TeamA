//
//  CommentTableViewController.m
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/13.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "CommentTableViewController.h"
#import "ProductDetailsTableViewCell.h"
#import "SeparateLineTableViewCell.h"
#import "CommentTableViewCell.h"
#import "APIClient.h"
#import "Comment.h"
#import <SDWebImage/UIImageView+WebCache.h>

typedef enum {
    
    productDetails,
    
    separateLine,
    
    comment

} commentComponent;

@interface CommentTableViewController () {

    NSArray <__kindof Comment *> *comments;
    
}

@end

@implementation CommentTableViewController

NSArray *commentComponents;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    commentComponents = [[NSArray alloc] initWithObjects: @(productDetails), @(separateLine), @(comment), nil];
    
    [self setupTableView];
    
    APIClient *client = [APIClient new];
    
    client.commentDelegate = self;
    
    [client getProductComment: _productId];
    
    //5947974173a7f08ded3e8269
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didGetValue:(id)value {

    comments = value;
    
    [self.tableView reloadData];
    
}

- (void)setupTableView {
    
    UINib *productDetailsNib = [UINib nibWithNibName: @"ProductDetailsTableViewCell" bundle:nil];
    
    [self.tableView registerNib:productDetailsNib forCellReuseIdentifier: @"ProductDetailsTableViewCell"];
    
    UINib *separateLineNib = [UINib nibWithNibName:@"SeparateLineTableViewCell" bundle:nil];
    
    [self.tableView registerNib:separateLineNib forCellReuseIdentifier:@"SeparateLineTableViewCell"];
    
    UINib *commentNib = [UINib nibWithNibName:@"CommentTableViewCell" bundle:nil];
    
    [self.tableView registerNib:commentNib forCellReuseIdentifier:@"CommentTableViewCell"];
    
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return commentComponents.count;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 200.0;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    switch ([indexPath section]) {
        case productDetails:
            
            return 133.0;
            
        case separateLine:
            
            return 20.0;
            
        case comment:
            
            return UITableViewAutomaticDimension;
            
        default:
            
            return 0.0;
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (section) {
        case productDetails:
            
            return 1;
            
        case separateLine:
            
            return 1;
            
        case comment:
            
            return comments.count;
            
        default:
            
            break;
            
    }
    
    return 0;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    id cellToReturn = nil;
    
    switch ([indexPath section]) {
        case productDetails:
        {
            
            static NSString *ProductDetailCellIdentifier = @"ProductDetailsTableViewCell";
            
            ProductDetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ProductDetailCellIdentifier forIndexPath:indexPath];
            
            [cell setSelectionStyle: UITableViewCellSelectionStyleNone];
            
            NSString *url = [[NSString alloc] initWithFormat:@"http://52.198.40.72/patissier/products/%@/preview.jpg", _productId];
            
            [cell.productImageView sd_setImageWithURL: url];
            
            cellToReturn = cell;
            
        }
            break;
            
        case separateLine:
        {
            
            static NSString *SeparateLineCellIdentifier = @"SeparateLineTableViewCell";
            
            SeparateLineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SeparateLineCellIdentifier forIndexPath:indexPath];
            
            [cell setSelectionStyle: UITableViewCellSelectionStyleNone];
            
            cellToReturn = cell;
            
        }
            break;
            
        case comment:
        {
        
            static NSString *CommentCellIdentifier = @"CommentTableViewCell";
            
            CommentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CommentCellIdentifier forIndexPath:indexPath];
            
            [cell setSelectionStyle: UITableViewCellSelectionStyleNone];
            
            cell.commentUserNameLabel.text = comments[indexPath.row].commentUserName;
            
            cell.commentUserContentLabel.text = comments[indexPath.row].commentContent;
            
            NSString *url = [[NSString alloc] initWithFormat:@"http://52.198.40.72/patissier/users/%@/picture.jpg", comments[indexPath.row].commentUserId];
            
            [cell.commentUserImageView sd_setImageWithURL: url];
            
            cellToReturn = cell;
            
        }
            
            break;
    }
    
    return cellToReturn;
    
}

@end
