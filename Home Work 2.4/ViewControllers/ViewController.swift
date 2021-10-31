//
//  ViewController.swift
//  Home Work 2.4
//
//  Created by Михаил Позялов on 30.10.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    private let user = User()
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userNameTextField.delegate = self
        self.passwordTextField.delegate = self
        
    }
    
    
    @IBAction func logInButtonPressed() {
        guard let userName = userNameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        if userName == user.login && password == user.password {
            performSegue(withIdentifier: "toWelcomScreen", sender: UIButton.self)
        } else {
            let alertControllerLogIn = UIAlertController(title: "Invalid login or password",
                                                         message: "Please, error correct login and password",
                                                         preferredStyle: .alert)
            
            alertControllerLogIn.addAction(UIAlertAction.init(title: "OK",
                                                              style: .default,
                                                              handler: nil))
            
            present(alertControllerLogIn, animated: true, completion: nil)
            passwordTextField.text = nil
        }
    }
    
    @IBAction func forgotUserNameButton() {
        let alertControllerUserName = UIAlertController(title: "Oops!",
                                                        message: "Your name is \(user.login)😀",
                                                        preferredStyle: .alert)
        
        alertControllerUserName.addAction(UIAlertAction.init(title: "OK",
                                                             style: .default,
                                                             handler: nil))
        
        present(alertControllerUserName, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordButton() {
        let alertControllerPassword = UIAlertController(title: "Oops!",
                                                        message: "Your password is \(user.password)😀",
                                                        preferredStyle: .alert)
        
        alertControllerPassword.addAction(UIAlertAction.init(title: "OK",
                                                             style: .default,
                                                             handler: nil))
        
        present(alertControllerPassword, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        guard let tabBarControllers = tabBarController.viewControllers else {return}
        
        for controller in tabBarControllers {
            
            switch controller {
            case is AboutMeViewController:
                _ = controller as! AboutMeViewController
            case is HobbyViewController:
                _ = controller as! HobbyViewController
            case is HometownViewController:
                _ = controller as! HometownViewController
            default:
                break
            }
        }
    }
}
