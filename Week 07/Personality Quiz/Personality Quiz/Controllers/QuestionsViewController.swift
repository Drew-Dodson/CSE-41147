//
//  QuestionsViewController.swift
//  Personality Quiz
//
//  Created by Robert Dodson on 7/11/20.
//  Copyright © 2020 RobertDodson.dev. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    var countries = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries.append(Country(countryName: "France", imageName: "france.jpg"))
        countries.append(Country(countryName: "Germany", imageName: "germany.jpg"))
        countries.append(Country(countryName: "Japan", imageName: "japan.jpg"))
        countries.append(Country(countryName: "U.S.A", imageName: "usa.jpg"))
        
    }



    func getResults() {
        
    }



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.countryNameToDisplay = "Germany"
        destinationVC.countryImageToDisplay = "germany.jpg"
    }


// FINAL } IN THE CLASS
}
