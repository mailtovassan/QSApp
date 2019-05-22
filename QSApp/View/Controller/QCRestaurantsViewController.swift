//
//  QCRestaurantsViewController.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit

class QCRestaurantsViewController: UIViewController {
    
    @IBOutlet var viewModel: RestaurantsViewModel!
    @IBOutlet weak var imgThumb: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    
    @IBOutlet weak var tblContactInfo: UITableView!
    
    @IBOutlet weak var lblAddress: UILabel!
    
    @IBOutlet weak var lblNores: UILabel!
    
    @IBOutlet weak var tblBuisnessHours: UITableView!
    
    @IBAction func btnFb(_ sender: Any) {
    }
    
    @IBAction func btnTwitter(_ sender: Any) {
    }
    
    @IBAction func btnYoutube(_ sender: Any) {
    }
    
    @IBAction func btnLocation(_ sender: Any) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel.fetchQSRestaurants(url: "\(BASEURL)\(RESTAURANTS)")
        {
          //  self.tblVacation.reloadData()
        }
        
////        let Restaurants:QSRestaurantsModel
//        let categoriesDetails = viewModel.content(index: 1)
//        configuration(Restaurants: categoriesDetails)
       
    }
    
    func configuration(Restaurants:QSRestaurantsModel)
    {
        
        if let LblTitle = Restaurants.title
        {
            self.lblTitle.text = LblTitle
        }
   
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
