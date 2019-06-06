//
//  DetailsTableViewModel.swift
//  TestUnitTestApp
//
//  Created by Manjunath K on 6/4/19.
//  Copyright © 2019 teksystems. All rights reserved.
//

import Foundation

class DetailsTableViewModel {
    var countryList = [Country]()
    var isListFetched: Dynamic<Bool> = Dynamic(false)
    
    func getListOfCountries() {
        CountryManager.sharedInstance.getCountryDetails() {
            (result, status) in
            if status {
                if let list = result {
                    self.isListFetched.value = true
                    self.countryList = list
                } else {
                    self.isListFetched.value = false
                }
                
            }
        }
    }
}
