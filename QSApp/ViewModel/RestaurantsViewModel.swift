//
//  RestaurantsViewModel.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//


import UIKit

class RestaurantsViewModel: NSObject {
    
    @IBOutlet var serviceModel: NetworkServiceManager!
    var responseData:QSRestaurantsModelArray?
    func fetchQSRestaurants(url:String,completionHandler:@escaping () -> ()){
        
        serviceModel.fetchQSRestaurants(completion: { (result) in
            self.responseData = result
            completionHandler()
        }, url: url)
        
    }
    
    func numberOfItemInSection(section:Int) -> Int{
        
        if let tablRestaurantsCount = self.responseData?.count{
            return tablRestaurantsCount
        }
        return 0
    }
    
    func contentItemAtIndex(indexPath:NSIndexPath) -> QSRestaurantsModel{
        return responseData![indexPath.row]
    }
    
//    func content(index:Int) -> QSRestaurantsModel{
//        return responseData![index]
//    }
    
}
