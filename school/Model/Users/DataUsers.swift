//
//  DataUsers.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class DataUsers {
    
    public var users: [User] = [User]()
    
    public func getAllUsers() -> [User] {
        users.append( User(idUser: "1", avatar: "1.jpg", email: "luis@mail.com", password: "jimyluis", name: "Luis Manuel", lastname: "Castillo Zamorano", typeUser: "alumno", state: "0") )
        users.append( User(idUser: "2", avatar: "2.jpg", email: "jim@mail.com", password: "jimyluis", name: "Ana Mireya", lastname: "Jimenez Perez", typeUser: "alumno", state: "0") )
        users.append( User(idUser: "3", avatar: "3.jpg", email: "isaias@mail.com", password: "jimyluis", name: "Isaias", lastname: "Ocampo", typeUser: "alumno", state: "0") )
        
        users.append( User(idUser: "4", avatar: "4.jpg", email: "dolores.i@gmail.co", password: "jimyluis", name: "Dolores Imelda", lastname: "Zamorano Lugo", typeUser: "docente", state: "0") )
        users.append( User(idUser: "5", avatar: "5.jpg", email: "augusto@mail.com", password: "jimyluis", name: "Augusto", lastname: "Hernandez", typeUser: "docente", state: "0") )
        return users
    }
    
}
