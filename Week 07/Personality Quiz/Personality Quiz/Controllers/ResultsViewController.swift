//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Robert Dodson on 7/11/20.
//  Copyright © 2020 RobertDodson.dev. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {


    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var countryImage: UIImageView!
    
    var countryNameToDisplay = ""
    var countryImageToDisplay = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        countryLabel.text = countryNameToDisplay
        countryImage.image = UIImage(named: countryImageToDisplay)
    }




// FINAL } IN THE CLASS
}
