//
//  ViewController.swift
//  NavBarAnimation
//
//  Created by Leandro Prado on 2020-05-22.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let oreoButton = UIButton.init(type: .custom)
    let pizzaButton = UIButton.init(type: .custom)
    let popTartsButton = UIButton.init(type: .custom)
    let popsicleButton = UIButton.init(type: .custom)
    let ramenButton = UIButton.init(type: .custom)
    
    var isOpen: Bool = false
    var stack: UIStackView!
    
    @IBOutlet weak var animatedNavBar: UIView!
    
    @IBOutlet weak var addButton: UIButton!
    
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        print("button tapped")
        
        if isOpen {
            UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, animations: {
                       let scaleTransform = CGRect(x: 0, y: 0, width: .max, height: 88)
                       let rotateTransform = CGAffineTransform(rotationAngle: .pi / 2)
                       self.addButton.transform = rotateTransform
                       self.animatedNavBar.frame = scaleTransform
                   })
            isOpen = !isOpen
            stack.isHidden = !stack.isHidden
        } else {
            UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, animations: {
                       let scaleTransform = CGRect(x: 0, y: 0, width: .max, height: 200)
                       let rotateTransform = CGAffineTransform(rotationAngle: .pi / 4)
                       self.addButton.transform = rotateTransform
                       self.animatedNavBar.frame = scaleTransform
                   })
            
            self.addImages()
            isOpen = !isOpen
            stack.isHidden = !stack.isHidden
        }
    }
    
    func addImages() -> Void {
        self.oreoButton.setImage(UIImage.init(named: "oreos"), for: .normal)
        self.pizzaButton.setImage(UIImage.init(named: "pizza_pockets"), for: .normal)
        self.popTartsButton.setImage(UIImage.init(named: "pop_tarts"), for: .normal)
        self.popsicleButton.setImage(UIImage.init(named: "popsicle"), for: .normal)
        self.ramenButton.setImage(UIImage.init(named: "ramen"), for: .normal)
        
        let imageHeight = CGFloat.init(100)
        
        stack = UIStackView.init(arrangedSubviews: [oreoButton, pizzaButton, popTartsButton, popsicleButton, ramenButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 5
        stack.isHidden = true
        self.animatedNavBar.addSubview(stack)
        
        NSLayoutConstraint.activate([
            self.stack.bottomAnchor.constraint(equalTo: animatedNavBar.bottomAnchor, constant: -5),
        self.stack.leadingAnchor.constraint(equalTo: animatedNavBar.leadingAnchor, constant: 5),
        self.stack.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -5),
            
        self.oreoButton.heightAnchor.constraint(lessThanOrEqualToConstant: imageHeight),
        self.pizzaButton.heightAnchor.constraint(lessThanOrEqualToConstant: imageHeight),
        self.popTartsButton.heightAnchor.constraint(lessThanOrEqualToConstant: imageHeight),
        self.popsicleButton.heightAnchor.constraint(lessThanOrEqualToConstant: imageHeight),
        self.ramenButton.heightAnchor.constraint(lessThanOrEqualToConstant: imageHeight)
        ])
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //title:
//        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 30, height: 44))
//        titleLabel.text = "Foods"
//        titleLabel.textAlignment = .center
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        animatedNavBar.addSubview(titleLabel)
    }

}

