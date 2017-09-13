//
//  TabBarViewController.m
//  
//
//  Created by yuling on 2017/9/12.
//
//

#import "TabBarViewController.h"
#import "ProfileInformationTableViewController.h"
#import "CommentTableViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *storeViewController = [[UIViewController alloc] init];
    
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
    
    //////
    CommentTableViewController *commentViewController = [[CommentTableViewController alloc] init];
    
    commentViewController.tabBarItem.title = @"Comment";
    
    commentViewController.title = @"Comment";
    
    commentViewController.tabBarItem.image = [UIImage imageNamed:@"icon-profile-selected"];
    
    UINavigationController *navigationViewControllerComment = [[UINavigationController alloc] initWithRootViewController:commentViewController];
    
    //////
    
    NSArray *tabBreViewControllers = @[navigationViewControllerStore, navigationViewControllerProfile, navigationViewControllerComment];
    
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
