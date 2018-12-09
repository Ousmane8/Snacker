//
//  FoodItemCellInterface.swift
//  Snacker
//
//  Created by Ousmane Sylla on 08/12/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

protocol FoodItemCellInterface {
    
    static var id: String { get }
    static var cellNib: UINib { get }
    
}

extension FoodItemCellInterface {
    
    static var id: String {
        return String(describing: Self.self)
    }
    
    static var cellNib: UINib {
        return UINib(nibName: id, bundle: nil)
    }
    
}

