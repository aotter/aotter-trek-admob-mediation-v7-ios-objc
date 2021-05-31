//
//  BannerViewController.m
//  GoogleMediation
//
//  Created by JustinTsou on 2021/5/28.
//

#import "BannerViewController.h"
#import <GoogleMobileAds/GoogleMobileAds.h>


static NSString *const BannerAdUnit = @"Your Banner ad unit";

@interface BannerViewController ()<GADBannerViewDelegate> {
    GADBannerView *_gadBannerView;
}

@property (weak, nonatomic) IBOutlet UIButton *refreshButton;
@end

@implementation BannerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setupGADBannerView];
}

- (IBAction)tapRefreshButton:(UIButton *)sender {
    [_gadBannerView loadRequest:[GADRequest request]];
}

#pragma mark : Setup GADBanner

- (void)setupGADBannerView {
    _gadBannerView = [[GADBannerView alloc]initWithAdSize:kGADAdSizeBanner];
    _gadBannerView.delegate = self;
    _gadBannerView.rootViewController = self;
    _gadBannerView.adUnitID = BannerAdUnit;
    [_gadBannerView loadRequest:[GADRequest request]];
}

- (void)setupBannerViewUI:(GADBannerView *)bannerView {
    
    [self.view addSubview:bannerView];

    [bannerView setTranslatesAutoresizingMaskIntoConstraints:NO];

    [bannerView.heightAnchor constraintEqualToConstant:bannerView.bounds.size.height].active = YES;
    [bannerView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:0.0].active = YES;
    [bannerView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:0].active = YES;
    [bannerView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:0].active = YES;
}

#pragma mark :GADBannerViewDelegate

- (void)adViewDidReceiveAd:(GADBannerView *)bannerView {
    if (bannerView != nil) {
        [self setupBannerViewUI:bannerView];
    }
}

- (void)adView:(GADBannerView *)bannerView didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"error message: %@",error.localizedDescription);
}

@end
