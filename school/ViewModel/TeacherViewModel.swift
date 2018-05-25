//
//  TeacherViewModel.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class TeacherViewModel {
    
    var avatar: String!
    var name: String!
    var matter: String!
    
    init(dataTeacher: Teacher) {
        self.avatar = dataTeacher.avatar
        self.name = dataTeacher.name
        self.matter = dataTeacher.matter
    }
    
}
