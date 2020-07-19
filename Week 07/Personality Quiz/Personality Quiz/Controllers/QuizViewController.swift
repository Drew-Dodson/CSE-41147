//
//  QuizViewController.swift
//  Personality Quiz
//
//  Created by Robert Dodson on 7/19/20.
//  Copyright © 2020 RobertDodson.dev. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    var countries = [Country]()
    var selectedCountry = 0
    var is21 = false

    @IBOutlet var wineLabel: UILabel!
    @IBOutlet var wineSwitch: UISwitch!
    @IBOutlet var beerLabel: UILabel!
    @IBOutlet var beerSwitch: UISwitch!
    
    @IBOutlet var fishSwitch: UISwitch!
    @IBOutlet var pastaSwitch: UISwitch!
    @IBOutlet var hamburgerSwitch: UISwitch!
    @IBOutlet var sausageSwitch: UISwitch!
    @IBOutlet var teaSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: true)
        countries.append(Country(countryName: .italy, imageName: K.italyImage))
        countries.append(Country(countryName: .japan, imageName: K.japanImage))
        countries.append(Country(countryName: .germany, imageName: K.germanyImage))
        countries.append(Country(countryName: .unitedStates, imageName: K.unitedStatesImage))
        checkAge()
    }



    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        if is21 {
            wineLabel.isHidden = false
            wineSwitch.isHidden = false
            beerLabel.isHidden = false
            beerSwitch.isHidden = false
        }
        wineLabel.isHidden = true
        wineSwitch.isOn = false
        wineSwitch.isHidden = true
        beerLabel.isHidden = true
        beerSwitch.isHidden = true
        beerSwitch.isOn = false
        
        fishSwitch.isOn = false
        pastaSwitch.isOn = false
        hamburgerSwitch.isOn = false
        sausageSwitch.isOn = false
        teaSwitch.isOn = false
        checkAge()
    }



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.countryNameToDisplay = countries[selectedCountry].countryName.rawValue.capitalized
        destinationVC.countryImageToDisplay = countries[selectedCountry].imageName
    }



    func checkAge() {
        let alert = UIAlertController(title: "Are you over 21?", message: nil, preferredStyle: .alert)
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (yesAction) in
            self.is21 = true
            self.wineLabel.isHidden = false
            self.wineSwitch.isHidden = false
            self.beerLabel.isHidden = false
            self.beerSwitch.isHidden = false
        }
        let noAction = UIAlertAction(title: "No", style: .default) { (noAction) in
            self.is21 = false
        }
        alert.addAction(yesAction)
        alert.addAction(noAction)
        present(alert, animated: true, completion: nil)
    }



    @IBAction func getResultsButtonPressed(_ sender: UIButton) {
        selectedCountry = getResults()
        performSegue(withIdentifier: K.resultsVC, sender: self)
    }



    func getResults() -> Int {
        if ((pastaSwitch.isOn && wineSwitch.isOn) && !(hamburgerSwitch.isOn || fishSwitch.isOn || sausageSwitch.isOn)) {
            return 0
        } else if ((fishSwitch.isOn && teaSwitch.isOn) && !(hamburgerSwitch.isOn || sausageSwitch.isOn || pastaSwitch.isOn)) {
            return 1
        } else if ((sausageSwitch.isOn && beerSwitch.isOn) && !(hamburgerSwitch.isOn || fishSwitch.isOn || pastaSwitch.isOn)) {
            return 2
        } else if ((hamburgerSwitch.isOn && beerSwitch.isOn) && !(fishSwitch.isOn || sausageSwitch.isOn || pastaSwitch.isOn)) {
            return 3
        } else if ((pastaSwitch.isOn) && !(hamburgerSwitch.isOn || fishSwitch.isOn || sausageSwitch.isOn)) {
            return 0
        } else if ((fishSwitch.isOn) && !(hamburgerSwitch.isOn || sausageSwitch.isOn || pastaSwitch.isOn)) {
            return 1
        } else if ((sausageSwitch.isOn) && !(hamburgerSwitch.isOn || fishSwitch.isOn || pastaSwitch.isOn)) {
            return 2
        } else if ((hamburgerSwitch.isOn) && !(fishSwitch.isOn || sausageSwitch.isOn || pastaSwitch.isOn)) {
            return 3
        }
        else { return Int.random(in: 0...3) }
    }




// FINAL } IN THE CLASS
}
