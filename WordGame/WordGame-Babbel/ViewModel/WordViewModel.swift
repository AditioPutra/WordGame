//
//  WordViewModel.swift
//  WordGame-Babbel
//
//  Created by Aditio Dharmaputra on 14/09/22.
//

import Foundation

class WordViewModel {
    var words: [Word] = []
    
    func getNextWord() -> (Word,Word) {
        let word = words[getRandomNumberForWord()]
        let answerOption = words[getRandomNumberForWord()]
        return(word,answerOption)
    }
    
    func getRandomNumberForWord() -> Int {
        Int.random(in: 0..<words.count)
    }
}
