//
//  Cartoon.swift
//  CartoonBook
//
//  Created by mustafa ölmezses on 9.05.2023.
//

import Foundation
import UIKit


class Cartoon{
    
    var characterName : String
    var characterType : String
    var characterImage : UIImage
    
    
    init(characterName: String, characterType: String, characterImage: UIImage) {
        self.characterName = characterName
        self.characterType = characterType
        self.characterImage = characterImage
    }
    
    
}
