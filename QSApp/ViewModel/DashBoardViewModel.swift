//
//  DashBoardViewModel.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit

class DashBoardViewModel: NSObject {

    @IBOutlet var serviceModel: NetworkServiceManager!
    var responseData:QSCategoryModelArray?
    func fetchQSCategories(url:String,completionHandler:@escaping () -> ()){
        
        serviceModel.fetchQSCategories(completion: { (result) in
        self.responseData = result
         completionHandler()
        }, url: url)
        
    }
    
    func numberOfItemInSection(section:Int) -> Int{
        
        if let tablCategoriesCount = self.responseData?.count{
            return tablCategoriesCount
        }
        return 0
    }
    
    func contentItemAtIndex(indexPath:NSIndexPath) -> QSCategoryModel{
        return responseData![indexPath.row]
    }
    
}
