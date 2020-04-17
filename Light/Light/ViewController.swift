//
//  ViewController.swift
//  Light
//
//  Created by Leandro Prado on 2020-04-15.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    @IBOutlet weak var lightBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // The button was extended to match all the viewController, so the user can click anywhere
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }

    func updateUI() {
    if lightOn {
        // if light is on the background color is white with dark letters
        view.backgroundColor = .white
        lightBtn.setTitleColor(UIColor.black, for: .normal)
        lightBtn.setTitle("Turn Dark", for: .normal)
    } else {
        // if light is off the background color is black with white letters
        view.backgroundColor = .black
        lightBtn.setTitleColor(UIColor.white, for: .normal)
        lightBtn.setTitle("Turn Light", for: .normal)
    }
    }
    
}

