//
//  AboutMeViewController.swift
//  Home Work 2.4
//
//  Created by Михаил Позялов on 30.10.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    let user = User()
    
    @IBOutlet var firstNameOutlet: UILabel!
    @IBOutlet var lastNameOutlet: UILabel!
    @IBOutlet var ageOutlet: UILabel!
    @IBOutlet var emailOutlet: UILabel!
    @IBOutlet var phoneOutlet: UILabel!
    @IBOutlet var loginOutlet: UILabel!
    @IBOutlet var passwordOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameOutlet.text = user.firstName
        lastNameOutlet.text = user.lastName
        ageOutlet.text = user.age
        emailOutlet.text = user.email
        phoneOutlet.text = user.phone
        loginOutlet.text = user.login
        passwordOutlet.text = user.password
    }
    
    
    
}
