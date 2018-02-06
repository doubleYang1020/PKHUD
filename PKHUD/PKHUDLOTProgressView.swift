//
//  PKHUDLOTProgressView.swift
//  PKHUD
//
//  Created by huyangyang on 2017/10/27.
//  Copyright © 2017年 NSExceptional. All rights reserved.
//

import UIKit

class PKHUDLOTProgressView: PKHUDLOTProgressBaseView,PKHUDAnimating {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    
    public init(title: String? = nil, subtitle: String? = nil) {
        super.init(image: PKHUDAssets.progressLotLoding, title: title, subtitle: subtitle)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func startAnimation() {
        //    imageView.layer.add(PKHUDAnimation.discreteRotation, forKey: "progressAnimation")
        imageView.play()
    }
    
    public func stopAnimation() {
    }
}

class PKHUDLOTProgressTypeForPlanetsView: PKHUDPgsTypeForPlanetsBaseView,PKHUDAnimating {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    
    public init(title: String? = nil, subtitle: String? = nil) {
        super.init(image: PKHUDAssets.progressLotLoding_PlanetsOrbit, title: title, subtitle: subtitle)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func startAnimation() {
        //    imageView.layer.add(PKHUDAnimation.discreteRotation, forKey: "progressAnimation")
        imageView.play()
        imageView.loopAnimation = true
    }
    
    public func stopAnimation() {
    }
}

