//
//  LandingViewController.m
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "LandingViewController.h"

@interface LandingViewController ()



@end

@implementation LandingViewController

//@synthesize backgroundImageView;
//@synthesize backgroundGradientView;
//@synthesize logoLabel;
//@synthesize signInWithFacebookButton;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupBackgroundImageView];
    
    [self setupBackgroundGradientView];
    
    [self setupLogoLabel];
    
    [self setupSignInWithFacebookButton];
    
}

//- (void)viewDidLayoutSubviews {
//    [super viewDidLayoutSubviews];
//    
//     _gradientLayer.frame = backgroundGradientView.bounds;
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)setupBackgroundImageView {
    
    _backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    
    _backgroundImageView.image = [UIImage imageNamed: @"image-landing"];

}

- (void)setupLogoLabel {

    _logoLabel.text = @"Patissier";
    
    _logoLabel.font = [UIFont fontWithName: @"Georgia-Bold" size: 50.0];
    
    _logoLabel.textColor = [UIColor whiteColor];
    
}

- (void)setupSignInWithFacebookButton {
    
    [_signInWithFacebookButton setTitle:@"Sign In With Facebook" forState:UIControlStateNormal];
    
    [_signInWithFacebookButton setBackgroundColor: [UIColor colorWithRed: 255/255.0 green: 53/255.0 blue: 71/255.0 alpha: 1.0]];
    
    [_signInWithFacebookButton.titleLabel setFont: [UIFont boldSystemFontOfSize: [UIFont systemFontSize]]];
    
    _signInWithFacebookButton.titleLabel.font = [UIFont systemFontOfSize: 16];
   
}

- (void)setupBackgroundGradientView {

    _backgroundGradientView.alpha = 0.85;
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    
    CAGradientLayer *gradientMask = gradientLayer;
    
    gradientMask.frame = self.view.bounds;
    
    gradientMask.colors = @[(id)[UIColor colorWithRed: 3/ 255.0 green: 63/ 255.0 blue: 122/ 255.0 alpha: 1.0].CGColor,
                            (id)[UIColor colorWithRed: 4/ 255.0 green: 107/ 255.0 blue: 149/ 255.0 alpha: 1.0].CGColor];
    
    gradientMask.endPoint = CGPointMake(0.5, 1.0);
    
    gradientMask.startPoint = CGPointMake(0.5, 0.0);
    
//    [backgroundGradientView.layer addSublayer: gradientLayer];
    
    [_backgroundGradientView.layer insertSublayer: gradientLayer atIndex:0];
    
//    [backgroundGradientView addSubview: gradientMask];
    
}

- (IBAction)facebookLoginButtonPressed:(id)sender {
    
    
    
    
}

@end
