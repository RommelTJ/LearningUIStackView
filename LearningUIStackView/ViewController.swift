//
//  ViewController.swift
//  LearningUIStackView
//
//  Created by Rommel Rico on 10/12/17.
//  Copyright © 2017 Rommel Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var peopleStackView: UIStackView!
    
    @IBAction func distributionSelected(_ sender: UISegmentedControl) {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2,options: .curveEaseInOut, animations: {
            
            if sender.selectedSegmentIndex == 0 {
                self.peopleStackView.alignment = .fill
            } else if sender.selectedSegmentIndex == 1 {
                self.peopleStackView.alignment = .top
            } else if sender.selectedSegmentIndex == 2 {
                self.peopleStackView.alignment = .center
            } else if sender.selectedSegmentIndex == 3 {
                self.peopleStackView.alignment = .bottom
            }
            
        }, completion: nil)
    }
    
    @IBAction func alignmentSelected(_ sender: UISegmentedControl) {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: .curveEaseInOut, animations: {
            if sender.selectedSegmentIndex == 0 {
                self.peopleStackView.distribution = .fill
            } else if sender.selectedSegmentIndex == 1 {
                self.peopleStackView.distribution = .fillEqually
            } else if sender.selectedSegmentIndex == 2 {
                self.peopleStackView.distribution = .fillProportionally
            } else if sender.selectedSegmentIndex == 3 {
                self.peopleStackView.distribution = .equalSpacing
            } else if sender.selectedSegmentIndex == 4 {
                self.peopleStackView.distribution = .equalCentering
            }
        }, completion: nil)
        
    }
    
}
