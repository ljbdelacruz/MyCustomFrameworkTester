//
//  Toolbar.swift
//  aeon-ios
//
//  Created by Von Tuico on 15/08/2017.
//  Copyright © 2017 Coreproc Inc. All rights reserved.
//

import UIKit

@IBDesignable
class Toolbar: UIView {
    
    // MARK: - Properties
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var toolbarView: UIView!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var rightButton: UIButton!
    
    @IBInspectable var backgroundViewColor: UIColor? {
        get {
            return backgroundView.backgroundColor
        }
        set(toolbarColor) {
            backgroundView.backgroundColor = toolbarColor
        }
    }
    
    @IBInspectable var toolbarColor: UIColor? {
        get {
            return toolbarView.backgroundColor
        }
        set(toolbarColor) {
            toolbarView.backgroundColor = toolbarColor
        }
    }
    
    @IBInspectable var title: String? {
        get {
            return titleLabel.text
        }
        set(title) {
            titleLabel.text = title
        }
    }
    
    @IBInspectable var titleColor: UIColor? {
        get {
            return titleLabel.textColor
        }
        set(titleColor) {
            titleLabel.textColor = titleColor
        }
    }
    
    @IBInspectable var leftButtonImage: UIImage? {
        get {
            return leftButton.image(for: .normal)
        }
        set(image) {
            leftButton.setImage(image, for: .normal)
        }
    }
    
    // MARK: Shadow
    
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
    
    // MARK: - Actions
    public var tapLeftButtonAction: (() -> Void)?
    public var tapRightButtonAction: (() -> Void)?
    @IBAction func didTapLeftButton(_ sender: Any) {
        tapLeftButtonAction?()
    }
    
    @IBAction func didTapRightButton(_ sender: Any) {
        tapRightButtonAction?()
    }
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupDefaults()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        setupDefaults()
    }
    
    private func setupDefaults() {
        let color = ColorUtil.hexStringToUIColor(hex: "490d79");
        self.backgroundViewColor = color
        self.backgroundView.dropShadow(scale: true)
        self.toolbarColor = color//AppColor.primary.uiColor
        self.title = ""
        self.titleColor = UIColor.white
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.leftButtonImage = UIImage(named: "ic_back_arrow_white");
        self.rightButton.isHidden = true
    }
    
    // MARK: - Private Helper Methods
    
    // Performs the initial setup.
    private func setupView() {
        let view = viewFromNibForClass()
        view.frame = bounds
        
        // Auto-layout stuff.
        view.autoresizingMask = [
            UIView.AutoresizingMask.flexibleWidth,
            UIView.AutoresizingMask.flexibleHeight
        ]
        // Show the view.
        addSubview(view)
    }
    
    // Loads a XIB file into a view and returns this view.
    private func viewFromNibForClass() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        /* Usage for swift < 3.x
         let bundle = NSBundle(forClass: self.dynamicType)
         let nib = UINib(nibName: String(self.dynamicType), bundle: bundle)
         let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
         */
        
        return view
    }
    
}
