//
//  LoginViewController.swift
//  Homework 6
//
//  Created by Владислав Клунный on 19.07.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logIn: UIButton!
    
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let userName = "User"
    private let password = "Hey"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.showNameTF = userName
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    

    @IBAction func forgotUserName() {
        showAlert(with: "Oops!", andMessage: "Your name is User")
    }

    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", andMessage: "Your password is Hey")
    }
    @IBAction func logInButton() {
        if userNameTF.text == userName, passwordTF.text == password {
        } else {
            showAlert(with: "Invalid login of password", andMessage: "Please enter correct login and message")
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    }

    


extension LoginViewController {
    
    private func showAlert(with title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
