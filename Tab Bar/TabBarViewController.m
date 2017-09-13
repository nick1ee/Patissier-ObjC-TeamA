//
//  TabBarViewController.m
//  
//
//  Created by yuling on 2017/9/12.
//
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *storeViewController = [[UIViewController alloc] init];
    
    storeViewController.view.backgroundColor = [UIColor yellowColor];
    
    storeViewController.tabBarItem.title = @"Store";
    
    storeViewController.title = @"Store";
    
    UINavigationController *navigationViewControllerStore = [[UINavigationController alloc] initWithRootViewController:storeViewController];
    
    UIViewController *profileViewController = [[UIViewController alloc] init];
    
    profileViewController.view.backgroundColor = [UIColor blueColor];
    
    profileViewController.tabBarItem.title = @"Profile";
    
    profileViewController.title = @"Profile";
    
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
