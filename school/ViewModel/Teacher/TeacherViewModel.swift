//
//  TeacherViewModel.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class TeacherViewModel {
    
    public var idUser: String
    public var avatar: String!
    public var name: String!
    public var lastname: String!
    public var matter: String!
    
    init(teacher: Teacher) {
        self.idUser = teacher.idUser
        self.avatar = teacher.avatar
        self.name = teacher.name
        self.lastname = teacher.lastname
        self.matter = teacher.matter
    }
    
}
