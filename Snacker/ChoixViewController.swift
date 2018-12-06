 //
//  ChoixViewController.swift
//  Snacker
//
//  Created by Ousmane Sylla on 06/12/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ChoixViewController: UIViewController {

    var myNumber: String = ""
    @IBOutlet weak var textlLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textlLabel.text = myNumber
    }
    

}
