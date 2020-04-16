//
//  GreenViewController.swift
//  AppDelegate
//
//  Created by Vadym Horovyi on 15/04/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    var textFromVC: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = textFromVC
    }
    

    @IBAction func onMain(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
