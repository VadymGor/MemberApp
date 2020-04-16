//
//  SettingsViewController.swift
//  AppDelegate
//
//  Created by Vadym Horovyi on 15/04/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func goToGreen(_ sender: UIButton) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
        let text = textField.text
        newVC.textFromVC = text
        
        navigationController?.pushViewController(newVC, animated: true)
        
    }
//    то же, что и выше, только через segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToGreen" {
            let text = textField.text
            let newVC = segue.destination as! GreenViewController
            newVC.textFromVC = text
        }
    }
    
}
