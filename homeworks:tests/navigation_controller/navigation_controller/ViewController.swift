//
//  ViewController.swift
//  navigation_controller
//
//  Created by User on 12/10/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logoutHandler(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
}

