//
//  DataTeacher.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class DataTeacher{
    
    var teachers = [Teacher]()
    
    func getTeachers() -> [Teacher] {
        teachers.append( Teacher(avatar: "user", name: "Luis Manuel", matter: "Programacion iOS") )
        teachers.append( Teacher(avatar: "user", name: "Ana Mireya", matter: "Programacion Android") )
        teachers.append( Teacher(avatar: "user", name: "Dolores Imelda", matter: "Diseño arquitectonico") )
        teachers.append( Teacher(avatar: "user", name: "José Ricardo", matter: "Construcción") )
        return teachers
    }
     
}
