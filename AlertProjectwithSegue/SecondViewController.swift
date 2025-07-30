//
//  SecondViewController.swift
//  AlertProjectwithSegue
//
//  Created by Burak Kaymak on 30.07.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        welcomeLabel.text = myName
    }
    

   
}
