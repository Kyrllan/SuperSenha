//
//  ViewController.swift
//  SuperSenha
//
//  Created by Kyrllan Nogueira on 01/05/19.
//  Copyright © 2019 Kyrllan Nogueira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacteres: UISwitch!
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        if let numberOfPasswords = Int(tfTotalPasswords.text!){
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!){
            passwordsViewController.numberOfCharacters = numberOfCharacters
        }
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.useSpecialCharacters = swSpecialCharacteres.isOn
        view.endEditing(true)
    }

}

