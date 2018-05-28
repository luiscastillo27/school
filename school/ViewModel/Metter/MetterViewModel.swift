//
//  MetterViewModel.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class MetterViewModel {
    
    var matter: String
    var avatar: String
    var name: String
    var lastname: String
    
    init(metter: Matter) {
        self.matter = metter.matter
        self.avatar = metter.avatar
        self.name = metter.name
        self.lastname = metter.lastname
    }
    
}
