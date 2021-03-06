//
//  TrekNativeAdTableViewCell.swift
//  AotterGoogleMediationAdSwift
//
//  Created by JustinTsou on 2021/3/2.
//

import UIKit
import GoogleMobileAds
import SDWebImage


class TrekNativeAdTableViewCell: UITableViewCell {
    
    private var nativeAdView: GADUnifiedNativeAdView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setGADUnifiedNativeAdData(nativeAd: GADUnifiedNativeAd) {
        for subview in self.contentView.subviews {
            subview.removeFromSuperview()
        }

        guard let gADNativeAdView = Bundle.main.loadNibNamed("UnifiedNativeAdView", owner: self, options: nil)?.first as? GADUnifiedNativeAdView else { return }
        self.setAdView(view: gADNativeAdView)

        (self.nativeAdView?.iconView as? UIImageView)?.sd_setImage(with:  nativeAd.icon?.imageURL, completed: nil)
        (self.nativeAdView?.headlineView as? UILabel)?.text = nativeAd.headline
        (self.nativeAdView?.bodyView as? UILabel)?.text = nativeAd.body
        (self.nativeAdView?.advertiserView as? UILabel)?.text = nativeAd.advertiser

        self.nativeAdView?.nativeAd = nativeAd
        self.addSubview(self.nativeAdView!)
    }
    
    private func setAdView(view:GADUnifiedNativeAdView) {
    
        self.nativeAdView?.removeFromSuperview()
        self.nativeAdView = view
        
        self.addSubview(self.nativeAdView!)
        self.nativeAdView?.translatesAutoresizingMaskIntoConstraints = false
        
        self.nativeAdView?.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.nativeAdView?.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.nativeAdView?.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.nativeAdView?.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}
