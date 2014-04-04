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
	// Do any additional setup after loading the view, typically from a nib.
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
