//
//  TableViewController.swift
//  testingPods
//
//  Created by Lainel John Dela Cruz on 24/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    @IBOutlet weak var myTB: Toolbar!
    @IBOutlet weak var myTV: UITableView!
    var items:[UITableViewModelContent]=[];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupTableCell();
        self.items=UITableViewModelContent.initStubData();
        self.myTV.reloadData();
    }
    func initToolbar(){
        if myTB != nil {
            myTB.title = "UITableView"
            myTB.tapLeftButtonAction = {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    func setupTableCell(){
        self.myTV.delegate=self;
        self.myTV.dataSource=self;
        self.myTV.registerCustomCell(named: CustomCell1TableViewCell.nibname);
    }
    

}


extension TableViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell1TableViewCell.identifier, for: indexPath) as! CustomCell1TableViewCell
        print(self.items[indexPath.row].label!);
        print(cell.movieLabel);
        cell.movieLabel.text=self.items[indexPath.row].label!;
        cell.bgImage.image=UIImage(named:self.items[indexPath.row].backgroundImage);
        cell.ratings.rating=self.items[indexPath.row].ratings;
        return cell;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
}
