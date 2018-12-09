//
//  ToppingTableViewCell.swift
//  Snacker
//
//  Created by Ousmane Sylla on 08/12/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class ToppingTableViewCell: UITableViewCell {
    var toppingItem : Variable<Topping> = Variable(Topping(name: "", quantity: 0))
    let disposeBag = DisposeBag()
    @IBOutlet weak var toppingLabel: UILabel!
    @IBOutlet weak var plustButtonOutlet: UIButton!
    @IBOutlet weak var minusButtonOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        toppingItem.asObservable().subscribe(onNext : { value in
            self.toppingLabel.text = "\(value.quantity) \(value.name)(s)"
        }).disposed(by: disposeBag)
        
        plustButtonOutlet.rx.tap.bind {
            self.toppingItem.value.increase()
            }.disposed(by: disposeBag)
        
        minusButtonOutlet?.rx.tap.bind {
            self.toppingItem.value.decrease()
            }.disposed(by: disposeBag)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
