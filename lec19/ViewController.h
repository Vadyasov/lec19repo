//
//  ViewController.h
//  lec19
//
//  Created by Konstantin Vadyasov on 04.04.14.
//  Copyright (c) 2014 Konstantin Vadyasov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "GADBannerView.h"

@interface ViewController : UIViewController <ADBannerViewDelegate, GADBannerViewDelegate> {
    
    GADBannerView *gadView;
}

@end
