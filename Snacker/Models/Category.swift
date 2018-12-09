//
//  Category.swift
//  Snacker
//
//  Created by Ousmane Sylla on 08/12/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//


import Foundation
import RxDataSources

struct Category {
    var header: String
    var items: [Item]
}

extension Category: SectionModelType {
    typealias Item = FoodItem
    
    init(original: Category, items: [Item]){
        self = original
        self.items = items
    }
}
