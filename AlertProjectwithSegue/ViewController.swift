//
//  ViewController.swift
//  AlertProjectwithSegue
//
//  Created by Burak Kaymak on 30.07.2025.
//

import UIKit

class ViewController: UIViewController {
    
    func makeAlert(tittle : String, message : String){
        
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
        
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    
    @IBOutlet weak var enterUsername: UITextField!
    @IBOutlet weak var enterPassword: UITextField!
    
    
    var username = "burak"
    var password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        enterPassword.text = ""
        enterUsername.text = ""
        
    }
    
    
    @IBAction func loginClicked(_ sender: Any) {
        
        if enterUsername.text == ""
        {
            makeAlert(tittle: "Warning!", message: "Username not found!")
        }
        
        else if enterPassword.text == "" 
        {
            makeAlert(tittle: "Warning!", message: "Password not found!")
        }
        
        else if enterPassword.text != password || enterUsername.text != username
        {
            makeAlert(tittle: "Warning!", message: "Username/password is wrong!")
        }
        
        else 
        {
            performSegue(withIdentifier: "toSecondVc", sender: nil)
        }

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVc"{
            
            let destinationVc = segue.destination as! SecondViewController
            destinationVc.myName = "Welcome \(username)"
            
        }
    }
    

}

