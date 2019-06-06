//
//  CountryManager.swift
//  TestUnitTestApp
//
//  Created by Manjunath K on 6/4/19.
//  Copyright © 2019 teksystems. All rights reserved.
//

import Foundation

class  CountryManager {
    
    static let sharedInstance = CountryManager()
    
    func getCountryDetails(callback:@escaping (_ result: [Country]?,_ status:Bool) -> Void) {
        
        CountryStore.sharedInstance.getCountryDetails() {
            (result,status) in
            callback(result,status)
        }
    }
}
