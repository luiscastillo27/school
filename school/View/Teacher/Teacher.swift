//
//  teacher.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class Teacher {
    var avatar: String
    var name: String
    var lastname: String
    var matter: String
    
    init(avatar: String, name: String, lastname: String, matter: String) {
        self.avatar = avatar
        self.name = name
        self.lastname = lastname
        self.matter = matter
    }
}
