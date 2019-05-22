//
//  VacationViewModel.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit

class VacationViewModel: NSObject {
    
    @IBOutlet var serviceModel: NetworkServiceManager!
    var responseData:QSVacationModelArray?
    func fetchQSVacation(url:String,completionHandler:@escaping () -> ()){
        
        serviceModel.fetchQSVacation(completion: { (result) in
            self.responseData = result
            completionHandler()
        }, url: url)
        
    }
    
    func numberOfItemInSection(section:Int) -> Int{
        
        if let tablVacationCount = self.responseData?.count{
            return tablVacationCount
        }
        return 0
    }
    
    func contentItemAtIndex(indexPath:NSIndexPath) -> QSVacationModel{
        return responseData![indexPath.row]
    }
    
}

