//
//  ProductCollectionViewController.m
//  Patissier-ObjC
//
//  Created by 陳遵丞 on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "ProductCollectionViewController.h"
#import "ProductCollectionViewCell.h"
#import "APIClient.h"
#import "Product.h"


@interface ProductCollectionViewController () {
   
    NSArray <__kindof Product *> *proudctsInfo;
    
}

@end


@implementation ProductCollectionViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];

    
    APIClient *client = [APIClient new];
    
    client.delegate = self;
    //[delegate :self]
    
    [client getProductInformation];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UINib *nib = [UINib nibWithNibName:@"ProductCollectionViewCell" bundle:nil];
    
    [self.collectionView registerNib: nib forCellWithReuseIdentifier:@"cell"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didGetValue:(id)value {
    

    proudctsInfo = value;
    
    
    
    [self.collectionView reloadData];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return proudctsInfo.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ProductCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor];
    NSString *mystring =  [proudctsInfo[indexPath.row].productPrice stringValue];
    cell.priceLabel.text = mystring;
    cell.titleLabel.text = proudctsInfo[indexPath.row].productName;
    
    
    
    
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
