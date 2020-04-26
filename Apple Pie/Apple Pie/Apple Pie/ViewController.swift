//
//  ViewController.swift
//  Apple Pie
//
//  Created by Leandro Prado on 2020-04-24.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    variables:
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed = 7
    var lastMatch: String = "Starting now"
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
//    Start View:
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newRound()
    }
    
//    Starting the Game:
    
    var currentGame: Game!
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetter: [])
            enableLetterBtn(true)
            updateUI()
        } else {
            enableLetterBtn(false)
        }
    }
    
    func enableLetterBtn(_ enable: Bool) {
        for btn in letterBtn {
            btn.isEnabled = enable
            
            if btn.isEnabled {
                btn.tintColor = UIColor.black
                btn.backgroundColor = UIColor.lightGray
                btn.layer.cornerRadius = 5
                btn.layer.borderWidth = 1
                btn.layer.borderColor = UIColor.lightGray.cgColor
                btn.layer.shadowColor = UIColor.darkGray.cgColor
                btn.layer.shadowOffset = CGSize(width: 1, height: 2)
                btn.layer.shadowOpacity = 1
                btn.layer.shadowRadius = 0
                
            } else {
                btn.tintColor = UIColor.darkGray
                btn.backgroundColor = UIColor.lightGray
                btn.layer.cornerRadius = 5
                btn.layer.borderWidth = 1
                btn.layer.borderColor = UIColor.lightGray.cgColor
                btn.layer.shadowColor = UIColor.lightGray.cgColor
                btn.layer.shadowOffset = CGSize(width: 0, height: 0)
                btn.layer.shadowOpacity = 0
                btn.layer.shadowRadius = 0
            }
            
        }
    }
    
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses) -- Last match: \(lastMatch)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining).png")
        }
    
//    Screen itens displayed:
    
    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterBtn: [UIButton]!
    
//    Action performed:
    
    @IBAction func btnPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining < 0 {
            lastMatch = "You lost!"
            totalLosses += 1
        } else if currentGame.formattedWord == currentGame.word {
            lastMatch = "You won!"
            totalWins += 1
        } else {
            updateUI()
        }
    }
}

