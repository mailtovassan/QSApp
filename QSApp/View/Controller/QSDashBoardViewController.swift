//
//  QSDashBoardViewController.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit

class QSDashBoardViewController: UIViewController {
    
    @IBOutlet var viewModel: DashBoardViewModel!
    
    @IBOutlet weak var tblCategory: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cellRegistration()
//
        // Do any additional setup after loading the view.
        self.viewModel.fetchQSCategories(url: "\(BASEURL)\(CATEGORIES)") {
            
            self.tblCategory.reloadData()
            
        }
    }
    
    
    func cellRegistration(){
          self.tblCategory.register(UINib(nibName: "QSCategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "categoriesID")
    }
    
}

extension QSDashBoardViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return viewModel.numberOfItemInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier:"categoriesID" , for: indexPath) as! QSCategoryTableViewCell
         let categoriesDetails = viewModel.contentItemAtIndex(indexPath: indexPath as NSIndexPath)
        
        cell.configuration(categories: categoriesDetails)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       // if indexPath.row == 0 {
        self.performSegue(withIdentifier: "QSVacationViewController", sender: nil)
//        }else if indexPath.row == 1{
//             self.performSegue(withIdentifier: "QSRestaurantsViewController", sender: nil)
//        }
    }
    
}
