//
//  PKHUDProgressCancleBaseView.swift
//  PKHUD
//
//  Created by huyangyang on 2017/9/15.
//  Copyright © 2017年 NSExceptional. All rights reserved.
//

import UIKit

class PKHUDProgressCancleBaseView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
  
//  static let defaultSquareBaseViewFrame = CGRect(origin: CGPoint.zero, size: CGSize(width: 128.0, height: 82.5))
    static let defaultProgressCancleBaseViewFrame = CGRect(origin: CGPoint.zero, size: CGSize(width: 170.0, height: 112.0))
  
  public override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  public init(image: UIImage? = nil, title: String? = nil, subtitle: String? = nil) {
    super.init(frame: PKHUDProgressCancleBaseView.defaultProgressCancleBaseViewFrame)
    self.imageView.image = image
    titleLabel.text = title
    subtitleLabel.text = subtitle
    
    addSubview(imageView)
    addSubview(titleLabel)
    addSubview(subtitleLabel)
    addSubview(lineView)
    addSubview(cancleBtn)
  }
  open let lineView: UIView = {
    let lineView = UIImageView()
    lineView.backgroundColor = UIColor.init(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.5)
    return lineView
  }()
  
  open let cancleBtn: UIButton = {
    let cancleBtn = UIButton()
    cancleBtn.setTitle("取消", for: .normal)
    cancleBtn.titleLabel?.font = UIFont.init(name: "PingFangSC-Regular", size: 12)
    cancleBtn.setTitleColor(UIColor.white, for: .normal)
    cancleBtn.addTarget(self, action: #selector(clickCancleBtn), for: .touchUpInside)
    return cancleBtn
  }()
  
  @objc private func clickCancleBtn(){

    NotificationCenter.default.post(name: NSNotification.Name.init("KPKHUDProgressCancle"), object: self, userInfo: nil)
    print("clickCancleBtn")
  }
  
  open let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.alpha = 0.85
    imageView.clipsToBounds = true
    imageView.contentMode = .center
    return imageView
  }()
  
  open let titleLabel: UILabel = {
    let label = UILabel()
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 17.0)
    //        label.textColor = UIColor.black.withAlphaComponent(0.85)
    label.textColor = UIColor.white
    label.adjustsFontSizeToFitWidth = true
    label.minimumScaleFactor = 0.25
    return label
  }()
  
  open let subtitleLabel: UILabel = {
    let label = UILabel()
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 12.0)
    //        label.textColor = UIColor.black.withAlphaComponent(0.7)
    label.textColor = UIColor.white
    label.adjustsFontSizeToFitWidth = true
    label.numberOfLines = 2
    label.adjustsFontSizeToFitWidth = true
    label.minimumScaleFactor = 0.25
    return label
  }()
  
  open override func layoutSubviews() {
    super.layoutSubviews()
    
    let viewWidth = bounds.size.width
    let viewHeight = bounds.size.height
    
//    let halfHeight = CGFloat(ceilf(CFloat(viewHeight / 2.0)))
//    let quarterHeight = CGFloat(ceilf(CFloat(viewHeight / 4.0)))
//    let threeQuarterHeight = CGFloat(ceilf(CFloat(viewHeight / 4.0 * 3.0)))
//
//    titleLabel.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: viewWidth, height: quarterHeight))
//    imageView.frame = CGRect(origin: CGPoint(x:0.0, y:quarterHeight), size: CGSize(width: viewWidth, height: halfHeight))
//    subtitleLabel.frame = CGRect(origin: CGPoint(x:0.0, y:threeQuarterHeight), size: CGSize(width: viewWidth, height: quarterHeight))
    
    titleLabel.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 0, height: 0))
    imageView.frame = CGRect(origin: CGPoint(x:viewWidth/2 - 15, y:12), size: CGSize(width: 30, height: 30))
    imageView.contentMode = .scaleAspectFit
    subtitleLabel.frame = CGRect(origin: CGPoint(x:0.0, y: 52 ), size: CGSize(width: viewWidth, height: 16.5))
    lineView.frame = CGRect(origin: CGPoint(x:0.0, y: 80.5 ), size: CGSize(width: viewWidth, height: 1))
    cancleBtn.frame = CGRect(origin: CGPoint(x:0.0, y: viewHeight - 30 ), size: CGSize(width: viewWidth, height: 30))
  }

}
