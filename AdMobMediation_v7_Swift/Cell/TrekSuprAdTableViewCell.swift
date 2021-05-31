//
//  TrekSuprAdTableViewCell.swift
//  AotterGoogleMediationAdSwift
//
//  Created by JustinTsou on 2021/3/2.
//

import UIKit
import GoogleMobileAds

class TrekSuprAdTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setGADUnifiedNativeAdData(nativeAd:GADUnifiedNativeAd, size:CGSize) {

        for subview in self.contentView.subviews {
            subview.removeFromSuperview()
        }
        
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let gADMediaView = GADMediaView.init(frame: rect)
        gADMediaView.mediaContent = nativeAd.mediaContent
        self.addSubview(gADMediaView)

        gADMediaView.translatesAutoresizingMaskIntoConstraints = false
        gADMediaView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        gADMediaView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        gADMediaView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        gADMediaView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}
