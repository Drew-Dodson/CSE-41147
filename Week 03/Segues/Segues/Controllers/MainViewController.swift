//
//  ViewController.swift
//  Segues
//
//  Created by Robert Dodson on 7/9/20.
//  Copyright © 2020 RobertDodson.dev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {


// IBOutlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!



    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func forgotUserName(_ sender: UIButton) {
        performSegue(withIdentifier: K.segueName, sender: forgotUserNameButton)
    }



    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: K.segueName, sender: forgotPasswordButton)
    }



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }



// FINAL } IN THE CLASS BELOW
}
