//
//  WelcomeViewController.swift
//  Homework 6
//
//  Created by Владислав Клунный on 19.07.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet var showWelcome: UILabel!
    
    var showNameTF = ""
    
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
        alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.verticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        showWelcome.text = "Welcome, \(showNameTF) !"
    }
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
extension UIView {
         func verticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
            let gradient = CAGradientLayer()
            gradient.frame = bounds
            gradient.colors = [topColor.cgColor, bottomColor.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            gradient.endPoint = CGPoint(x: 0, y: 1)
            layer.insertSublayer(gradient, at: 0)
        }
        
    }
