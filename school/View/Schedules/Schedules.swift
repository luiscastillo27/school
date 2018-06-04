//
//  Schedules.swift
//  school
//
//  Created by admin on 03/06/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class Schedules {
    
    var idTeacher: String
    var idMatter: String
    var day: String
    var hour: String
    var semester: String
    
    init( idTeacher: String, idMatter: String, day: String, hour: String, semester: String ){
        self.idTeacher = idTeacher
        self.idMatter = idMatter
        self.day = day
        self.hour = hour
        self.semester = semester
    }
    
    
}
