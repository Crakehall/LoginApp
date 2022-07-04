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
    
    private let userName = "User"
    private let password = "111000"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    @IBAction func unwind(_ unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginButtonTapped() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlertAction(title: "oopps", message: "incorrect login or password")
            userNameTF.text = nil
            passwordTF.text = nil
            return
        }
        performSegue(withIdentifier: "login", sender: nil)
    }
    
    @IBAction func forgotUsernameTapped() {
        showAlertAction(title: "oopps", message: "your name is \(userName)")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlertAction(title: "oopps", message: "your password is \(password)")
    }
    
    // MARK: PRIVATE Methods and properties
    
    private func showAlertAction(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default))
        self.present(alert, animated: true)
    }
    
    
    
    
}



