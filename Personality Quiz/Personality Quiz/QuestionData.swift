//
//  QuestionData.swift
//  Personality Quiz
//
//  Created by Leandro Prado on 2020-05-07.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
    enum ResponseType {
        case single, multiple, ranged
    }
}

struct Answer {
    var text: String
    var type: AnimalType
    
    enum AnimalType: Character {
        case dog = "🐶", cat = "😺", rabbit = "🐰", turtle = "🐢"
    
        var definition: String {
            switch self {
            case .dog:
                return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
            case .cat:
                return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
            case .rabbit:
                return "You love everything that's soft. You are healthy and full of energy."
            case .turtle:
                return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
            }
        }
    }
}
