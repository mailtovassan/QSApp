//
//  NetworkServiceManager.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit
import Alamofire


class NetworkServiceManager: NSObject {

    func fetchQSCategories(completion: @escaping (QSCategoryModelArray?) -> (),url: String){
        Alamofire.request(url, method: .get).responseJSON { responseData in
            guard responseData.data != nil else {  return completion(nil) }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(QSCategoryModelArray.self, from: responseData.data!)
                completion(result)
                return
            }
            catch let err {
                print("Err", err)
            }
            
        }
    }
    
    func fetchQSRestaurants(completion: @escaping (QSRestaurantsModelArray?) -> (),url: String){
        Alamofire.request(url, method: .get).responseJSON { responseData in
            guard responseData.data != nil else {  return completion(nil) }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(QSRestaurantsModelArray.self, from: responseData.data!)
                completion(result)
                return
            }
            catch let err {
                print("Err", err)
            }
            
        }
    }
    
    
    func fetchQSVacation(completion: @escaping (QSVacationModelArray?) -> (),url: String){
        Alamofire.request(url, method: .get).responseJSON { responseData in
            guard responseData.data != nil else {  return completion(nil) }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(QSVacationModelArray.self, from: responseData.data!)
                completion(result)
                return
            }
            catch let err {
                print("Err", err)
            }
            
        }
    }
}
