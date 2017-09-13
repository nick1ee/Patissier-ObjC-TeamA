//
//  TabBarViewController.m
//  
//
//  Created by yuling on 2017/9/12.
//
//

#import "TabBarViewController.h"
#import "ProfileInformationTableViewController.h"
#import "ProductCollectionViewController.h"


@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    UICollectionViewController *storeViewController = [[UICollectionViewController alloc] init];
    
    UICollectionViewFlowLayout *aFlowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    [aFlowLayout setItemSize:CGSizeMake(154, 160)];
    
    [aFlowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    storeViewController = [[ProductCollectionViewController alloc]initWithCollectionViewLayout:aFlowLayout];
   
    storeViewController.view.backgroundColor = [UIColor yellowColor];
    
    storeViewController.tabBarItem.title = @"Store";
    
    storeViewController.title = @"Store";
    
    storeViewController.tabBarItem.image = [UIImage imageNamed:@"icon-store"];
    
    UINavigationController *navigationViewControllerStore = [[UINavigationController alloc] initWithRootViewController:storeViewController];
    
    ProfileInformationTableViewController *profileViewController = [[ProfileInformationTableViewController alloc] init];
    
    profileViewController.tabBarItem.title = @"Profile";
    
    profileViewController.title = @"Profile";
    
    profileViewController.tabBarItem.image = [UIImage imageNamed:@"icon-profile-selected"];
    
    UINavigationController *navigationViewControllerProfile = [[UINavigationController alloc] initWithRootViewController:profileViewController];
    
    NSArray *tabBreViewControllers = @[navigationViewControllerStore, navigationViewControllerProfile];
    
    [self setViewControllers:tabBreViewControllers animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
