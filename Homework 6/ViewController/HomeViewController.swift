//
//  HomeViewController.swift
//  Homework 6
//
//  Created by Владислав Клунный on 28.07.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var positionLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
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
        nameLabel.text = User.getUserInformation().person.name
        surnameLabel.text = User.getUserInformation().person.surname
        companyLabel.text = User.getUserInformation().person.company
        positionLabel.text = User.getUserInformation().person.position.rawValue
        view.verticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
    
}
