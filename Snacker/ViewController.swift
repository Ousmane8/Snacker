//
//  ViewController.swift
//  Snacker
//
//  Created by Ousmane Sylla on 03/12/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

   
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
    
    }
    
    // Passer les Données à travers un View Controller
    @IBAction func showMyNumberButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showMyNumber", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMyNumber"{
        let VCDestination = segue.destination as! ChoixViewController
        VCDestination.myNumber = nameTextField.text!
        }
    }
    
    // Masquer le clavier
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return (true)
    }
    
    
}

