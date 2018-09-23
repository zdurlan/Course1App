//
//  ViewController.swift
//  LearnToApp
//
//  Created by Alin Zdurlan on 22/09/2018.
//  Copyright © 2018 Alin Zdurlan. All rights reserved.
//

import UIKit

enum TimeOfDay: String {
    case Dimineata = "Dimineata"
    case Pranz = "Pranz"
    case Seara = "Seara"
}

class ViewController: UIViewController {
    @IBOutlet weak var timeOfDayLabel: UILabel!
    @IBOutlet weak var sunImage: UIImageView!
    
    var timeOfDay = TimeOfDay.Dimineata
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapNext(_ sender: Any) {
        switch timeOfDay {
        case .Dimineata:
            timeOfDay = .Pranz
            sunImage.image = #imageLiteral(resourceName: "coolSun")
            UIView.animate(withDuration: 1) {
                self.sunImage.frame = CGRect(x: self.view.center.x-50, y: 120, width: 100, height: 100)
            }
        case .Pranz:
            timeOfDay = .Seara
            sunImage.image = #imageLiteral(resourceName: "afternoonSun")
            UIView.animate(withDuration: 1) {
                self.sunImage.frame = CGRect(x: self.view.frame.width-50, y: 166, width: 100, height: 100)
            }
        default:
            timeOfDay = .Dimineata
            sunImage.image = #imageLiteral(resourceName: "morningSun")
            UIView.animate(withDuration: 1) {
                self.sunImage.frame = CGRect(x: self.view.frame.origin.x-50, y: 166, width: 100, height: 100)
            }
        }
        timeOfDayLabel.text = timeOfDay.rawValue.uppercased()
    }
    
}

