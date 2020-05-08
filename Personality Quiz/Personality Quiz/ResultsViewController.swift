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
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult() {

        
        var frequencyOfAnswers: [Answer.AnimalType: Int] = [:]
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
        
        let frequentAnsersSorted = frequencyOfAnswers.sorted(by: { (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
//        This code could be simpler using this: frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
            
        })
        
        let mostCommonAnswer = frequentAnsersSorted.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    
    }


}
