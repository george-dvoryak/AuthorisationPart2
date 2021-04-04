//
//  WelcomeViewController.swift
//  authorisationFinalNew
//
//  Created by George Kook on 04.04.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var usernameLabel: UILabel!
    
    var usernameToShow: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = usernameToShow
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
        
    }
}
