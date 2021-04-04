//
//  ViewController.swift
//  authorisationFinalNew
//
//  Created by George Kook on 04.04.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let username = "Sensei"
    private let password = "322322"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.usernameToShow = "Hello, " + String(usernameTextField.text!)
    }
    @IBAction func logInButtonPressed() {
        
    }
    
    @IBAction func forgotUsernameButtonPressed() {
        showAlert(with: "Forgot Username?", and: "Your username is " + username)
    }
    
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Forgot Password?", and: "Your password is " + password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else {return}
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
}
// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(with title: String, and message: String ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Thanks!", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        }
    }


