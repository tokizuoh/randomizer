//
//  Randomizer.swift
//  
//
//  Created by tokizo on 2020/07/19.
//

import Foundation

struct Randomizer {
    var digitLength: Int = 16
    static let alphabets = (97...122).map({Character(UnicodeScalar($0))})
    static let numberCharacters = (48...57).map({Character(UnicodeScalar($0))})
    private let characters = alphabets + numberCharacters
    
    func generate() -> String {
        var result = ""
        for i in 0 ..< digitLength {
            var index: Int
            if i == 0 {
                index = Int.random(in: 0..<26)
            } else {
                index = Int.random(in: 0..<self.characters.count)
            }
            result += String(characters[index])
        }
        return result
    }
}

