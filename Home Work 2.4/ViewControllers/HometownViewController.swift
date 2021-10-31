//
//  hometownViewController.swift
//  Home Work 2.4
//
//  Created by Михаил Позялов on 30.10.2021.
//

import UIKit

class HometownViewController: UIViewController {
    
    @IBOutlet var hometownOutlet: UILabel!
    
    let home = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hometownOutlet.text = home.country + home.region + home.city
    }
}
