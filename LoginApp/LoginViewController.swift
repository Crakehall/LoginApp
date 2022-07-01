//
//  ViewController.swift
//  LoginApp
//
//  Created by Олег Сосницкий on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        userNameTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
    }

    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        guard seque.destination is WelcomeViewController else { return }
        
        
    }
    
    @IBAction func unwind(_ unwindSegue: UIStoryboardSegue) {
        guard let loginVC = unwindSegue.destination as? LoginViewController else { return }
        loginVC.userNameTF.text = nil
        loginVC.passwordTF.text = nil
    }
    
    

    @IBAction func loginButtonTapped() {
        
        showAlertAction(title: "oopps", message: "try again")
    }
    @IBAction func forgotUsernameTapped() {
        showAlertAction(title: "oopps", message: "try again")
        
    }
    @IBAction func forgotPasswordButtonTapped() {
        showAlertAction(title: "oopps", message: "try again")
    }
    
    
    // MARK: PrIVATE FUNCS
    private func showAlertAction(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {(action:UIAlertAction!) in
            print("Action")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    private let userName = "User"
    private let password = "111000"
    

}
