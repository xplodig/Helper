//
//  DesignableTextField.swift
//  Created by Umair  on 26/02/2020.
//  Copyright © 2020 Umair . All rights reserved.

import Foundation
import UIKit

class DesignableTextField: UITextField {
    @IBInspectable var rightImage : UIImage? {
      didSet {
        updateRightView()
      }
    }

    @IBInspectable var rightPadding : CGFloat = 0 {
      didSet {
        updateRightView()
      }
    }
    
    func updateRightView() {
      if let image = rightImage {
        rightViewMode = .always

        // assigning image
        let imageView = UIImageView(frame: CGRect(x: rightPadding, y: 0, width: 20, height: 20))
        imageView.image = image

        var width = rightPadding - 20

        if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
          width -= 5
        }

        let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20)) // has 5 point higher in width in imageView
        view.addSubview(imageView)


        rightView = view

      } else {
        // image is nill
        rightViewMode = .never
      }
    }
    
    @IBInspectable var leftImage : UIImage? {
      didSet {
        updateLeftView()
      }
    }

    @IBInspectable var leftPadding : CGFloat = 0 {
      didSet {
        updateLeftView()
      }
    }
    
    func updateLeftView() {
      if let image = leftImage {
        leftViewMode = .always

        // assigning image
        let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
        imageView.image = image

        var width = leftPadding + 20

        if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
          width += 5
        }

        let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20)) // has 5 point higher in width in imageView
        view.addSubview(imageView)


        leftView = view

      } else {
        // image is nill
        leftViewMode = .never
      }
    }
}
