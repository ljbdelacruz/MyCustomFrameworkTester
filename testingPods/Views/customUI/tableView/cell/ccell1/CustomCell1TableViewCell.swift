//
//  CustomCell1TableViewCell.swift
//  testingPods
//
//  Created by Lainel John Dela Cruz on 24/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit
import RatingControl

class CustomCell1TableViewCell: UITableViewCell {
    @IBOutlet weak var viewLabelContainer: UIView!
    static let identifier:String="CustomCell1";
    static let nibname:String="CustomCell1";
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var ratings: RatingControl!
    @IBOutlet weak var viewContraints: NSLayoutConstraint!
    public var viewPrimaryColor:UIColor=ColorUtil.hexStringToUIColor(hex: "#F3F0F0");
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        self.viewLabelContainer.backgroundColor=viewPrimaryColor;
        if selected {
            UIView.animate(withDuration: 0.5, animations: {
                self.viewContraints.constant=80;
            })
        }else{
            UIView.animate(withDuration: 0.5, animations: {
                self.viewContraints.constant=46;
            })
        }
    }
    
    func initDefault(){
    }
    
}
