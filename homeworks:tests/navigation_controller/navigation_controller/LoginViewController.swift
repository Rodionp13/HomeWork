//
//  LoginViewController.swift
//  navigation_controller
//
//  Created by User on 12/10/17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet var loggin: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var warning: UILabel!
    
    @IBAction func loginTapped(_ sender: Any) {
        let loging = "Rodia"
        let pas = "p13"
        if loggin.text == loging && password.text == pas {
        let mainNavigationController = storyboard?.instantiateViewController(withIdentifier: "MainNavigationController") as! MainNavigationController
        
        present(mainNavigationController, animated: true, completion: nil)
        } else {
         warning.text = "You've written wrong data!"
        }
}
}
