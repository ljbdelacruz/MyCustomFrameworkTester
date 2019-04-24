//
//  UIScrollViewController.swift
//  testingPods
//
//  Created by Lainel John Dela Cruz on 24/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit

class UIScrollViewController: UIViewController {
    @IBOutlet weak var navbar: Toolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.initToolbar();
    }
    func initToolbar(){
        if navbar != nil {
            
            navbar.title = "UIScroll"
            navbar.tapLeftButtonAction = {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }

}
