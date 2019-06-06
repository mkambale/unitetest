//
//  CountryStore.swift
//  TestUnitTestApp
//
//  Created by Manjunath K on 6/4/19.
//  Copyright © 2019 teksystems. All rights reserved.
//

import Foundation
import ObjectMapper

class  CountryStore {
    
    static let sharedInstance = CountryStore()
    
    func getCountryDetails(callback:@escaping (_ result: [Country]?,_ status:Bool) -> Void){
        
        let url = "https://jsonblob.com/api/jsonBlob/a4447344-86b6-11e9-a208-ddff631f0eb6"
        
        var response =  [Country]()
        
        NetworkService.sharedInstance.getRequest(url: url) {
            (result, returnCode) in
            if let code = returnCode {
                if code == 0 { //success
                    let respArray = result as! [String: Any]
                    if let list = Mapper<Country>().mapArray(JSONObject:respArray["array"] as Any){
                        response = list
                        callback(response,true)
                    }
                } else {
                    callback(nil,false)
                }
            } else {
                callback(nil,false)
            }
        }
    }
}
