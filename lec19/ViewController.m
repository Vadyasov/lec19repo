//
//  ViewController.m
//  lec19
//
//  Created by Konstantin Vadyasov on 04.04.14.
//  Copyright (c) 2014 Konstantin Vadyasov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.canDisplayBannerAds = YES;
    
    gadView = [[GADBannerView alloc] initWithFrame:CGRectMake(0, 0, GAD_SIZE_320x50.width, GAD_SIZE_320x50.height)];
    
    gadView.adUnitID = @"a14ec3f0a2028f2";
    gadView.rootViewController = self;
    gadView.delegate = self;
    
    [self.view addSubview:gadView];
    
//    --test only--
    
    GADRequest *req = [GADRequest request];
    
    req.testDevices = @[GAD_SIMULATOR_ID];
// -----
    
    [gadView loadRequest:req];
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    [UIView animateWithDuration:1.0 animations:^{
        banner.alpha = 1.0;
    }];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    [UIView animateWithDuration:1.0 animations:^{
        banner.alpha = 0;
    }];
    
}

@end
