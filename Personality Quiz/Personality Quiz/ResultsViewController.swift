//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Leandro Prado on 2020-05-07.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult() {

        //  even after naming ResultsSegue on the Attributes Inspector (Main.storyboard) this VC is not inhereting the QuestionData struct, making it impossible to continue, why does this happen?
        
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.type }
    
    
    for response in responseTypes {
        let newCount: Int

        if let oldCount = frequencyOfAnswers[response] {
            newCount = oldCount + 1
        } else {
            newCount = 1
        }

        frequencyOfAnswers[response] = newCount
    }
    
    }


}
