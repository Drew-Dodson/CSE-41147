//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Robert Dodson on 7/11/20.
//  Copyright © 2020 RobertDodson.dev. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {


    @IBOutlet var titleLabel: UILabel!
    var eventNumber = 1


    override func viewDidLoad() {
        super.viewDidLoad()
        if let existingText = titleLabel.text {
           titleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidLoad"
           eventNumber += 1
        }
    }



    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let existingText = titleLabel.text {
           titleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewWillAppear"
           eventNumber += 1
        }
    }



    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let existingText = titleLabel.text {
           titleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidAppear"
           eventNumber += 1
        }
    }



    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let existingText = titleLabel.text {
           titleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewWillDisappear"
           eventNumber += 1
        }
    }



    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let existingText = titleLabel.text {
           titleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidDisappear"
           eventNumber += 1
        }
    }



// FINAL } IN THE CLASS
}
