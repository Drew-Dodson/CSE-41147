//
//  WelcomeViewController.swift
//  Personality Quiz
//
//  Created by Robert Dodson on 7/19/20.
//  Copyright © 2020 RobertDodson.dev. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipedLeft))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }



    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }



    //Recognize a swipe left to start the quiz
    @objc func swipedLeft(gestureRecognizer: UISwipeGestureRecognizer) {
        print("Swipped")
        self.performSegue(withIdentifier: K.quizVC, sender: self)
    }





// FINAL } IN THE CLASS
}





