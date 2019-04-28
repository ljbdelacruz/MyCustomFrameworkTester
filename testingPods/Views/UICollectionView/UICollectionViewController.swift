//
//  UICollectionViewController.swift
//  testingPods
//
//  Created by Lainel John Dela Cruz on 28/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit

class UICollectionViewController: UIViewController {
    @IBOutlet weak var myCV: UICollectionView!
    @IBOutlet weak var myTB: Toolbar!
    var items:[String]=["sample_movie_desc", "sample_movie_desc"];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.initToolbar()
        self.initCV()
    }
    
    func initToolbar(){
        if myTB != nil {
            myTB.title = "UICollectionView"
            myTB.tapLeftButtonAction = {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
}

extension UICollectionViewController:UICollectionViewDelegate, UICollectionViewDataSource{
    func initCV(){
        self.myCV.delegate=self;
        self.myCV.dataSource=self;
        self.myCV.registerCustomCell(named: CollectionCell1CollectionViewCell.nibname);
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=myCV.dequeueReusableCell(withReuseIdentifier: CollectionCell1CollectionViewCell.identifier, for: indexPath) as! CollectionCell1CollectionViewCell;
        cell.bgImage.image=UIImage(named:self.items[indexPath.row]);
        return cell;
    }
    
    
}
