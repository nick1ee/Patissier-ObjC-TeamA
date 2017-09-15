//
//  TabBarViewController.m
//
//
//  Created by yuling on 2017/9/12.
//
//

#import "TabBarViewController.h"
#import "GradientNavigationController.h"
#import "ProfileInformationTableViewController.h"
#import "ProductCollectionViewController.h"


@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ProductCollectionViewController *storeViewController = [[ProductCollectionViewController alloc] init];

    UICollectionViewFlowLayout *flowlayout = [[UICollectionViewFlowLayout alloc] init];

    [flowlayout setItemSize:CGSizeMake(154, 160)];

    [flowlayout setScrollDirection:UICollectionViewScrollDirectionVertical];

    storeViewController = [[ProductCollectionViewController alloc]initWithCollectionViewLayout:flowlayout];

    storeViewController.tabBarItem.title = @"Store";

    storeViewController.title = @"Store";

    storeViewController.tabBarItem.image = [UIImage imageNamed:@"icon-store"];

    GradientNavigationController *navigationViewControllerStore = [[GradientNavigationController alloc] initWithRootViewController:storeViewController];

    [navigationViewControllerStore.navigationBar setTitleTextAttributes: [NSDictionary dictionaryWithObject: [UIColor whiteColor] forKey: NSForegroundColorAttributeName]];

    ProfileInformationTableViewController *profileViewController = [[ProfileInformationTableViewController alloc] init];

    profileViewController.tabBarItem.title = @"Profile";

    profileViewController.title = @"Profile";

    profileViewController.tabBarItem.image = [UIImage imageNamed:@"icon-profile-selected"];

    GradientNavigationController *navigationViewControllerProfile = [[GradientNavigationController alloc] initWithRootViewController:profileViewController];

    [navigationViewControllerProfile.navigationBar setTitleTextAttributes: [NSDictionary dictionaryWithObject: [UIColor whiteColor] forKey: NSForegroundColorAttributeName]];

    NSArray *tabBreViewControllers = @[navigationViewControllerStore, navigationViewControllerProfile];

    [self setViewControllers:tabBreViewControllers animated:YES];

}

@end
