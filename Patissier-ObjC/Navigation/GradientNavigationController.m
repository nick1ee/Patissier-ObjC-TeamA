//
//  GradientNavigationController.m
//  Patissier-ObjC
//
//  Created by Nick Lee on 2017/9/14.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientNavigationController.h"

@interface GradientNavigationController ()

@end

@implementation GradientNavigationController

CAGradientLayer *naviagtionBarGradientLayer;
UIView *navigationBarGradientView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    naviagtionBarGradientLayer = [[CAGradientLayer alloc] init];
    
    navigationBarGradientView = [[UIView alloc] init];
    
    [self setUpGradientNavigationBar];
    
}

- (void)viewDidLayoutSubviews {
    
    naviagtionBarGradientLayer.frame = navigationBarGradientView.bounds;
    
}

- (void)setUpGradientNavigationBar{

    [self.navigationBar setBackgroundImage: [UIImage alloc] forBarMetrics: UIBarMetricsDefault];
    
    self.navigationBar.shadowImage = [UIImage alloc];
    
    [self.navigationBar setTranslucent: true];
    
    [self.view insertSubview: navigationBarGradientView belowSubview: self.navigationBar];
    
    id superview = navigationBarGradientView.superview;
    
    [navigationBarGradientView.leadingAnchor constraintEqualToAnchor: [superview leadingAnchor] constant: 0.0].active = true;
    
    [navigationBarGradientView.trailingAnchor constraintEqualToAnchor: [superview trailingAnchor] constant: 0.0].active = true;
    
    [navigationBarGradientView.topAnchor constraintEqualToAnchor: [superview topAnchor] constant: 0.0].active = true;
    
    [navigationBarGradientView.bottomAnchor constraintEqualToAnchor: [self.navigationBar bottomAnchor] constant: 0.0].active = true;
    
    navigationBarGradientView.translatesAutoresizingMaskIntoConstraints = false;
    
    naviagtionBarGradientLayer.colors = [[NSArray alloc] initWithObjects: [[[UIColor alloc] initWithRed: 3.0 / 255.0 green: 63.0 / 255.0 blue: 122.0 / 255.0  alpha: 1.0] CGColor], [[[UIColor alloc] initWithRed: 4.0 / 255.0 green: 107.0 / 255.0  blue: 149.0 / 255.0 alpha: 1.0] CGColor], nil];
    
    naviagtionBarGradientLayer.startPoint = CGPointMake(0.0, 0.5);
    
    naviagtionBarGradientLayer.endPoint = CGPointMake(1.0, 0.5);
    
    [navigationBarGradientView.layer insertSublayer: naviagtionBarGradientLayer atIndex: 0];
    
}

@end
