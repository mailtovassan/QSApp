//
//  QSVacationViewController.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit

class QSVacationViewController: UIViewController {
    @IBOutlet var viewModel: VacationViewModel!
    @IBOutlet weak var tblVacation: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
self.cellRegistration()
        // Do any additional setup after loading the view.
        
        self.viewModel.fetchQSVacation(url: "\(BASEURL)\(RESTAURANTS)") {
            
            self.tblVacation.reloadData()
            
        }
    }
    
    func cellRegistration(){
        self.tblVacation.register(UINib(nibName: "QSVacationTableViewCell", bundle: nil), forCellReuseIdentifier: "VacationID")
    }

}
extension QSVacationViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItemInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier:"VacationID" , for: indexPath) as! QSVacationTableViewCell
        let categoriesDetails = viewModel.contentItemAtIndex(indexPath: indexPath as NSIndexPath)
        
        cell.configuration(categories: categoriesDetails)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        //self.performSegue(withIdentifier:"QCRestaurantsViewController", sender: nil)
        //self.performSegue(withIdentifier: "QCRestaurantsViewController", sender: nil)
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QCRestaurantsViewController") as? QCRestaurantsViewController
        {
            
            present(vc, animated: true, completion: nil)
        }
    }
    
    
}
