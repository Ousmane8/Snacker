//
//  CartCategory.swift
//  Snacker
//
//  Created by Ousmane Sylla on 08/12/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import Foundation
import RxDataSources


struct CartCategory : Codable{
    var header: String
    var items: [Item]
}

extension CartCategory: SectionModelType {
    typealias Item = FoodItemOrder
    
    init(original: CartCategory, items: [Item]){
        self = original
        self.items = items
    }
}

