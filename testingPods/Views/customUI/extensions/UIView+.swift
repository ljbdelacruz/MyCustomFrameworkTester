//
//  UIView+.swift
//  testingPods
//
//  Created by Lainel John Dela Cruz on 24/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//
import Foundation
import UIKit;

public extension UIView{
    public func dropShadow(scale: Bool = true) {
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 1
        
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}

