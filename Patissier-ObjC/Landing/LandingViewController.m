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

@synthesize backgroundImageView;
@synthesize backgroundGradientView;
@synthesize logoLabel;
@synthesize signInWithFacebookButton;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupBackgroundImageView];
    
    [self setupLogoLabel];
    
    [self setupSignInWithFacebookButton];
    
    [self.view addSubview: backgroundImageView];
    
    [self.backgroundImageView addSubview: logoLabel];
    
    [self.backgroundImageView addSubview: signInWithFacebookButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupBackgroundImageView {
    
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    
    backgroundImageView.image = [UIImage imageNamed: @"image-landing"];

}

- (void)setupLogoLabel {

    logoLabel.text = @"Patissier";
    
    logoLabel.font = [UIFont fontWithName: @"Georgia-Bold" size: 50.0];
    
}

- (void)setupSignInWithFacebookButton {

}

- (void)setupBackgroundGradientView {

    backgroundGradientView.alpha = 0.85;
    
    
}

- (IBAction)facebookLoginButtonPressed:(id)sender {
    
    [signInWithFacebookButton setTitle:@"Sign In With Facebook Button" forState:UIControlStateNormal];
    
//    [sender setTitle: @"Sign In With Facebook Button" forState: UIControlStateNormal];
    
    signInWithFacebookButton.titleLabel.font = [UIFont fontWithName: @"UIFontWeightSemibold" size: 16.0];
    
}

@end
