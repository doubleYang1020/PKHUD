//
//  PKHUDProgressCancleView.swift
//  PKHUD
//
//  Created by huyangyang on 2017/9/15.
//  Copyright © 2017年 NSExceptional. All rights reserved.
//

import UIKit
import QuartzCore
import Lottie

class PKHUDProgressCancleView: PKHUDProgressCancleBaseView,PKHUDAnimating {
  
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
