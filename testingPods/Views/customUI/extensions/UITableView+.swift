//
//  UITableView+.swift
//  testingPods
//
//  Created by Lainel John Dela Cruz on 28/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit


extension UITableView {
    // TODO: Add to Kitchen
    // Rules: nibName == Identifier
    func registerCustomCell(named name: String) {
        let nib = UINib(nibName: name, bundle: nil)
        self.register(nib, forCellReuseIdentifier: name)
    }
    
    func registerCustomCellClass(_ c: AnyClass?, identifier: String) {
        self.register(c, forCellReuseIdentifier: identifier)
    }
    
}
