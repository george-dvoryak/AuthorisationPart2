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
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.usernameToShow = username
    }
    @IBAction func logInButtonPressed() {
        if usernameTextField.text != username || passwordTextField.text != password {
            showAlert(
                title: "Incorrect data",
                message: "Please, enter correct username and password",
                textField: passwordTextField
            )
        }
    }
     
    @IBAction func forgotUsernameButtonPressed() {
        showAlert(title: "Forgot Username?", message: "Your username is " + username)
    }
    
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Forgot Password?", message: "Your password is " + password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = nil
        passwordTextField.text = nil
    }
}
// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Thanks!", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        }
    }

//extension LoginViewController: UITextFieldDelegate {
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        view.endEditing(true)
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == usernameTextField {
//            passwordTextField.becomeFirstResponder()
//        } else {
//            logInButtonPressed()
//        }
//        return true
//    }
//}
