//
//  WelcomeViewController.swift
//  Home Work 2.4
//
//  Created by Михаил Позялов on 30.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTextFieldOutlet: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeTextFieldOutlet.text = "Welcome " + (userName ?? "") + "!"
        
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
   
}
