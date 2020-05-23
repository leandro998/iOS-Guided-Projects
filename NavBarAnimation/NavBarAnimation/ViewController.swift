//
//  ViewController.swift
//  NavBarAnimation
//
//  Created by Leandro Prado on 2020-05-22.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        print("button tapped")
        
        let originalFrame = CGRect(x: 0, y: 0, width: .max, height: 88)
        let animatedNavBar = UIView(frame: originalFrame)
        animatedNavBar.backgroundColor = .gray
        view.addSubview(addButton)
        view.addSubview(animatedNavBar)

        UIView.animate(withDuration: 1.0, animations: {
            let scaleTransform = CGRect(x: 0, y: 0, width: .max, height: 200) //CGAffineTransform(scaleX: 0, y: 2.5)
            let rotateTransform = CGAffineTransform(rotationAngle: .pi / 4)
            self.addButton.transform = rotateTransform
            animatedNavBar.frame = scaleTransform
        },
            completion: { _ in
                UIView.animate(withDuration: 1.0) {
                    self.addButton.transform = CGAffineTransform.identity
                    animatedNavBar.transform = CGAffineTransform.identity
                }
            }
                       )
        
        view.addSubview(addButton)
    }
    
//    func example5() {
//      let originalFrame = CGRect(x: 0, y: 44, width: 100, height: 100)
//      let square = UIView(frame: originalFrame)
//      square.backgroundColor = .purple
//      view.addSubview(square)
//      UIView.animate(withDuration: 2.0, animations: {
//
//        let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
//        let rotationTransform = CGAffineTransform(rotationAngle: .pi) // max - .pi
//        let translateTransform = CGAffineTransform(translationX: self.view.frame.size.width / 2 - 100, y: self.view.frame.size.height / 2 - 100)
//
//        square.transform = scaleTransform.concatenating(rotationTransform).concatenating(translateTransform)
//
//      }) { (_) in
//        UIView.animate(withDuration: 2.0) {
//          square.transform = .identity
//        }
//      }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let animatedNavBar = UIView(frame: .init(x: 0, y: 0, width: .max, height: 88))
        animatedNavBar.backgroundColor = .gray
        view.addSubview(animatedNavBar)
        view.addSubview(addButton)
    }

}

