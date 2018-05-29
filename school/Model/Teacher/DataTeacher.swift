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
        teachers.append( Teacher(id: "1", avatar: "user", name: "Luis Manuel", lastname: "Castillo Zamorano", matter: "Programacion iOS") )
        teachers.append( Teacher(id: "2", avatar: "user", name: "Ana Mireya", lastname: "Jimenez Perez", matter: "Programacion Android") )
        teachers.append( Teacher(id: "3", avatar: "user", name: "Dolores Imelda", lastname: "Zamorano Lugo", matter: "Diseño arquitectonico") )
        teachers.append( Teacher(id: "4", avatar: "user", name: "José Ricardo", lastname: "Zamorano Lugo", matter: "Construcción") )
        return teachers
    }
     
}
