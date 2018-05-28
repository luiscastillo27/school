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
        teachers.append( Teacher(avatar: "user", name: "Luis Manuel", lastname: "Castillo Zamorano", matter: "Programacion iOS") )
        teachers.append( Teacher(avatar: "user", name: "Ana Mireya", lastname: "Jimenez Perez", matter: "Programacion Android") )
        teachers.append( Teacher(avatar: "user", name: "Dolores Imelda", lastname: "Zamorano Lugo", matter: "Diseño arquitectonico") )
        teachers.append( Teacher(avatar: "user", name: "José Ricardo", lastname: "Zamorano Lugo", matter: "Construcción") )
        return teachers
    }
     
}
