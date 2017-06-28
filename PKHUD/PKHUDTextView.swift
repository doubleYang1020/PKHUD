//
//  PKHUDTextView.swift
//  PKHUD
//
//  Created by Philip Kluz on 6/12/15.
//  Copyright (c) 2016 NSExceptional. All rights reserved.
//  Licensed under the MIT license.
//

import UIKit


extension String {
  //    constrainedToSize 如果一行，用CGSizeZero，否则用CGSizeMake(你想要的宽度, CGFloat(MAXFLOAT)
  func textSizeWithFont(font: UIFont, CGSizeZero size:CGSize) -> CGFloat {
    var textSize:CGSize!
    if size.equalTo(CGSize.zero) {
      let attributes = NSDictionary(object: font, forKey: NSFontAttributeName as NSCopying)
      textSize = self.size(attributes: attributes as? [String : AnyObject])
    } else {
      let option = NSStringDrawingOptions.usesLineFragmentOrigin
      let attributes = NSDictionary(object: font, forKey: NSFontAttributeName as NSCopying)
      let stringRect = self.boundingRect(with: size, options: option, attributes: attributes as? [String : AnyObject], context: nil)
      textSize = stringRect.size
    }
    return textSize.width
  }
}

/// PKHUDTextView provides a wide, three line text view, which you can use to display information.
open class PKHUDTextView: PKHUDWideBaseView {

    public init(text: String?) {
        super.init()
        commonInit(text)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit("")
    }

    func commonInit(_ text: String?) {
        titleLabel.text = text
        addSubview(titleLabel)
        let textWidth = text?.textSizeWithFont(font: UIFont.boldSystemFont(ofSize: 12.0), CGSizeZero: CGSize.zero)
        self.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 64 + textWidth!, height: 40.0))
//        self.layer.masksToBounds = true
//        self.layer.cornerRadius = 20
    }

    open override func layoutSubviews() {
        super.layoutSubviews()

        let padding: CGFloat = 10.0
        titleLabel.frame = bounds.insetBy(dx: padding, dy: padding)
    }

    open let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 12.0)
//        label.textColor = UIColor.black.withAlphaComponent(0.85)
      label.textColor = UIColor.white
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 3
        return label
    }()
}
