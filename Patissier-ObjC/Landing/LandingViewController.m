//
//  LandingViewController.m
//  Patissier-ObjC
//
//  Created by yuling on 2017/9/11.
//  Copyright © 2017年 nicklee. All rights reserved.
//

#import "LandingViewController.h"
#import "FBSDKLoginKit.h"
#import "FBSDKCoreKit.h"
#import "TabBarViewController.h"

@interface LandingViewController ()

@property (nonatomic, strong) TabBarViewController *tabBarcontroller;

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
    
//    [_signInWithFacebookButton addTarget:self action:@selector(signInWithFacebook:) forControlEvents: UIControlEventTouchUpInside];
   
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
    
    [_backgroundGradientView.layer insertSublayer: gradientLayer atIndex:0];
    
}

- (IBAction)signInWithFacebook: (id)sender {
    
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    
    [login logInWithReadPermissions:@[@"email"] fromViewController: self handler: ^(FBSDKLoginManagerLoginResult *result, NSError *error)
     {
         
         if (error)
         {
             
             NSLog(@"Login process error");
             
         }
         else if (result.isCancelled)
         {
             
             NSLog(@"User cancelled login");
         }
         else
         {
             
             NSLog(@"Login success");
             
             if ([result.grantedPermissions containsObject:@"email"])
             {
                 
                 NSMutableDictionary *jsonTokenDict = [[NSMutableDictionary alloc] init];
                 
                 [jsonTokenDict setObject:[[FBSDKAccessToken currentAccessToken]tokenString] forKey: @"access_token"];
                 
                 NSData* jsonData = [NSJSONSerialization dataWithJSONObject: jsonTokenDict options: kNilOptions error: &error];
                 
                 NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
                 
                 [request setURL:[NSURL URLWithString: @"http://52.198.40.72/patissier/api/v1/sign_in/facebook"]];
                 
                 [request setHTTPMethod: @"POST"];
                 
                 [request setValue: @"application/json" forHTTPHeaderField:@"Content-Type"];
                 
                 [request setHTTPBody: jsonData];
                 
                 NSURLSessionConfiguration *defaultSessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
                 
                 NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: defaultSessionConfiguration];
                 
                 NSURLSessionDataTask *dataTask = [defaultSession dataTaskWithRequest: request completionHandler: ^(NSData *data, NSURLResponse *response, NSError *error) {
                     
                     if(error)
                     {
                         NSLog(@"JSONObjectWithData error: %@", error);
                     }
                     
                     NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData: data options:NSJSONReadingMutableContainers error:nil];
                     
                     NSArray *jsonData = [jsonObject objectForKey: @"data"];
                     
                     NSString *jsonToken = [jsonData valueForKey: @"token"];
                     
                     [[NSUserDefaults standardUserDefaults] setValue: jsonToken forKey: @"jwtToken"];
                     
                     [[NSUserDefaults standardUserDefaults] synchronize];
                     
                     self.tabBarcontroller = [[TabBarViewController alloc] init];
                     
                     [self presentViewController: _tabBarcontroller animated: YES completion: nil];
                     
                 }];
                 
                 [dataTask resume];
                 
             }
             
         }
         
     }];
    
    
    
}


@end
