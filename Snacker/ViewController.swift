//
//  ViewController.swift
//  Snacker
//
//  Created by Ousmane Sylla on 03/12/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
   // View Controller
    @IBOutlet weak var nameButton: UIButton!
    
    // Clavier
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
        textField?.delegate = self
        nameButton?.isUserInteractionEnabled = false
        nameButton?.alpha = 0.5
    }
    
    // Passer les Données à travers un View Controller
    @IBAction func showMyNumberButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showMyNumber", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMyNumber"{
        let VCDestination = segue.destination as! ChoixViewController
        VCDestination.myNumber = textField.text!
        }
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        if !text.isEmpty{
            nameButton?.isUserInteractionEnabled = true
            nameButton?.alpha = 1.0
        } else {
            nameButton?.isUserInteractionEnabled = false
            nameButton?.alpha = 0.5
        }
        return true
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

