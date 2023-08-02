//
//  BioViewController.swift
//  Homework 6
//
//  Created by Владислав Клунный on 28.07.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var bioLabel: UILabel!
    
    private let primaryColor = UIColor(
        red: 209/200,
        green: 109/200,
        blue: 45/200,
        alpha: 1
    )

    private let secondaryColor = UIColor(
        red: 11/150,
        green: 54/200,
        blue: 17/300,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = User.getUserInformation().person.bio
        view.verticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
    
}
