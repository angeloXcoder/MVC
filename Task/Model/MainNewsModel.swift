//
//  MainNewsModel.swift
//  Task
//
//  Created by Mac on 8/25/19.
//  Copyright © 2019 Mac. All rights reserved.
//


import Foundation
import ObjectMapper

struct MainNewsModel : Mappable {
    var mainNewsModel :  [NewModel]?
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
    
    }
    
}
