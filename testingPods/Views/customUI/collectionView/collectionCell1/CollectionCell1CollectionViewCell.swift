//
//  CollectionCell1CollectionViewCell.swift
//  testingPods
//
//  Created by Lainel John Dela Cruz on 28/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit

class CollectionCell1CollectionViewCell: UICollectionViewCell {
    public static let identifier:String="CollectionCell1"
    public static let nibname:String="CollectionCell1"
    public var showColor:UIColor=ColorUtil.hexStringToUIColor(hex: "#918ea6");
    @IBOutlet weak var watchNowButton: UIButton!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var animateBG: UIView!
    
    
    override var isSelected: Bool {
        get {
            return super.isSelected
        }
        set {
            if newValue {
                super.isSelected = true
                self.appear();
            } else if newValue == false {
                super.isSelected = false
                self.disappear()
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.disappear();
    }
    func appear(){
        UIView.animate(withDuration: 0.5, animations: {
            self.animateBG.isHidden=false;
            self.watchNowButton.isHidden=false;
        })
    }
    func disappear(){
        UIView.animate(withDuration: 0.5, animations: {
            self.animateBG.isHidden=true;
            self.watchNowButton.isHidden=true;
            
        });
    }
}
