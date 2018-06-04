//
//  Matter.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class Matter: User {
    
    var idMatter: String
    var semester: String
    var carrier: String
    var matter: String
    
    init(idMatter: String, idUser: String, avatar: String, name: String, lastname: String, semester: String, carrier: String, matter: String, state: String) {
        self.idMatter = idMatter
        self.semester = semester
        self.carrier = carrier
        self.matter = matter
        super.init(idUser: idUser, avatar: avatar, name: name, lastname: lastname, state: state)
    }

    
}
