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


@interface ProductCollectionViewController () {
   
    
}

@end


@implementation ProductCollectionViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    APIClient *client = [APIClient new];
    
    client.delegate = self;
    //[delegate :self]
    
    [client getProductInformation];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    UINib *nib = [UINib nibWithNibName:@"ProductCollectionViewCell" bundle:nil];
    
    [self.collectionView registerNib: nib forCellWithReuseIdentifier:@"cell"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didGetValue:(id)value {
    

    NSLog(@"%@",value);

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;

}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 10;

}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ProductCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor];
    cell.priceLabel.text = @"$120";
    cell.titleLabel.text = @"巧克力杯子蛋糕";
    
    return cell;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(20, 25, 20, 25);
}


@end
