//
//  File.swift
//  TestUnitTestApp
//
//  Created by Manjunath K on 6/4/19.
//  Copyright © 2019 teksystems. All rights reserved.
//

import Foundation
import ObjectMapper

class Country : NSObject, Mappable {
//    required init?(map: Map) {
//        <#code#>
//    }
//
//    mutating func mapping(map: Map) {
//        <#code#>
//    }
    
    override init() {
        super.init()
    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        flagUrl <- map["flagUrl"]
        rank <- map["rank"]
    }
    
    var id:String?
    var name:String?
    var flagUrl:String?
    var rank:Int?
}
