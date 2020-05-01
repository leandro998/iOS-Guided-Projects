//
//  ChacedCaliceViewController.swift
//  UINavigationControllers
//
//  Created by Leandro Prado on 2020-05-01.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

import UIKit

class ChacedCaliceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    
}
