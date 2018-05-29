//
//  TeacherViewModel.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class TeacherViewModel {
    
    var id: String
    var avatar: String!
    var name: String!
    var lastname: String!
    var matter: String!
    
    
    init(teacher: Teacher) {
        self.id = teacher.id
        self.avatar = teacher.avatar
        self.name = teacher.name
        self.lastname = teacher.lastname
        self.matter = teacher.matter
    }
    
}
