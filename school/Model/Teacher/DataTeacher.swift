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
        teachers.append( Teacher(idUser: "1", avatar: "user", name: "Luis Manuel", lastname: "Castillo Zamorano", state: "0", carrier: "Ing Software", studies: "Ing Software", ranting: "0", professional_license: "1234", matter: "Programacion iOS") )
        teachers.append( Teacher(idUser: "2", avatar: "user", name: "Ana Mireya", lastname: "Jimenez Perez", state: "0", carrier: "Ing Software", studies: "Ing Software", ranting: "0", professional_license: "5678", matter: "Programacion Android") )
        teachers.append( Teacher(idUser: "3", avatar: "user", name: "Dolores Imelda", lastname: "Zamorano Lugo", state: "0", carrier: "Ing Software", studies: "Ing Software", ranting: "0", professional_license: "87654", matter: "Diseño arquitectonico") )
        teachers.append( Teacher(idUser: "4", avatar: "user", name: "José Ricardo", lastname: "Zamorano Lugo", state: "0", carrier: "Ing Software", studies: "Ing Software", ranting: "0", professional_license: "4321", matter: "Construcción") )
        return teachers
    }
     
}
