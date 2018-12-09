//
//  Receipt.swift
//  Snacker
//
//  Created by Ousmane Sylla on 08/12/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import Foundation
import RxDataSources

struct ReceiptGroup : Codable{
    var header: String
    var items: [Item]
}

extension ReceiptGroup: SectionModelType {
    typealias Item = Receipt
    
    init(original: ReceiptGroup, items: [Item]){
        self = original
        self.items = items
    }
}

struct Receipt : Codable{
    var id : String = ""
    var order_date : String = ""
    var order_detail : [CartCategory]?
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(String.self, forKey: .id)
        order_date = try values.decodeIfPresent(String.self, forKey: .order_date) ?? ""
        order_detail = try? values.decodeIfPresent([CartCategory].self, forKey: .order_detail) ?? []
    }
    
    init(){
    }
}
