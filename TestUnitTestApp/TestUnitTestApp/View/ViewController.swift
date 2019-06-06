//
//  ViewController.swift
//  TestUnitTestApp
//
//  Created by Manjunath K on 6/4/19.
//  Copyright © 2019 teksystems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pWordFeild: UITextField!
    @IBOutlet weak var uNameField: UITextField!
    
    @IBAction func startTapped(_ sender: Any) {
        if (pWordFeild.text?.count)! > 0 &&
            (uNameField.text?.count)! > 0 {
            
            let detailstViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailsTableViewController") as! DetailsTableViewController
            self.navigationController?.pushViewController(detailstViewController, animated: true)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}

