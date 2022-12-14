//
//  Word.swift
//  WordGame-Babbel
//
//  Created by Aditio Dharmaputra on 14/09/22.
//

import Foundation

struct Word: Decodable {
    let originalText: String
    let translatedText: String
    
    
    enum CodingKeys: String, CodingKey {
        case originalText = "text_eng"
        case translatedText = "text_spa"
    }
}

// MARK: Equatable
extension Word: Equatable {
    static func == (lhs: Word, rhs: Word) -> Bool {
        return lhs.originalText == rhs.originalText && lhs.translatedText == rhs.translatedText
    }
}
