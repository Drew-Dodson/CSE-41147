//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Robert Dodson on 7/19/20.
//  Copyright © 2020 RobertDodson.dev. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var countryName: UILabel!
    @IBOutlet var countryImage: UIImageView!
    
    var countryNameToDisplay = ""
    var countryImageToDisplay = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryName.text = countryNameToDisplay
        countryImage.image = UIImage(named: countryImageToDisplay)
    }



// FINAL } IN THE CLASS
}
