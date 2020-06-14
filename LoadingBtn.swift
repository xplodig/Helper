
//  Created by Umair  on 14/05/2020.
//  Copyright © 2020 Umair . All rights reserved.


import Foundation
import UIKit

class UIButtonActivity: UIButton {

    @IBInspectable var indicatorColor : UIColor = .lightGray

    private var buttonLabel: String?
    let indicator = UIActivityIndicatorView()
    
    var myView = UIView()
    var toolBarView = UIView()
    override var inputView: UIView {
        get {
            return self.myView
        }
        
        set {
            self.myView = newValue
            self.becomeFirstResponder()
        }
    }
    
    override var inputAccessoryView: UIView {
        get {
            return self.toolBarView
        }
        set {
            self.toolBarView = newValue
        }
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
    func startAnimating() {
        self.isEnabled = false
        buttonLabel = self.titleLabel?.text
        self.setTitle("", for: .normal)
        indicator.color = indicatorColor
        indicator.hidesWhenStopped = true
        let buttonHeight = self.bounds.size.height
        let buttonWidth = self.bounds.size.width
        indicator.center = CGPoint(x: buttonWidth/2, y: buttonHeight/2)
        let scale = max(min((self.frame.size.height - 15) / 21, 2.0), 0.0)
        let transform: CGAffineTransform = CGAffineTransform(scaleX: scale, y: scale)
        indicator.transform = transform
        self.addSubview(indicator)
        indicator.startAnimating()
    }

    func stopAnimating() {
        self.isEnabled = true

        if let titleLabel = buttonLabel {
            self.setTitle(titleLabel, for: .normal)
            indicator.stopAnimating()
            indicator.removeFromSuperview()
        }
    }
}
