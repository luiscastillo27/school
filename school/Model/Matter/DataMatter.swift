//
//  DataMatter.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class DataMatter{
    
    var matters = [Matter]()
    func getAllMattersFromUser() -> [Matter] {
        matters.append( Matter(idMatter: "1", idUser: "4", avatar: "4.jpg", name: "prueba 1", lastname: "prueba1", semester: "Septimo", carrier: "Ing Software", matter: "Programacion en Android", state: "0") )
        
        matters.append( Matter(idMatter: "1", idUser: "4", avatar: "4.jpg", name: "prueba 1", lastname: "prueba1", semester: "Septimo", carrier: "Ing Software", matter: "Programacion en iOS", state: "0") )
        
        matters.append( Matter(idMatter: "1", idUser: "4", avatar: "4.jpg", name: "prueba 1", lastname: "prueba1", semester: "Septimo", carrier: "Ing Software", matter: "Programacion en Angular", state: "0") )
        return matters
    }
    
    func getAllMattersFromTeacher() -> [Matter] {
        matters.append( Matter(idMatter: "1", idUser: "4", avatar: "4.jpg", name: "prueba 1", lastname: "prueba1", semester: "Septimo", carrier: "Ing Software", matter: "Programacion en Android", state: "0") )
        
        matters.append( Matter(idMatter: "1", idUser: "4", avatar: "4.jpg", name: "prueba 1", lastname: "prueba1", semester: "Septimo", carrier: "Ing Software", matter: "Programacion en iOS", state: "0") )
        
        matters.append( Matter(idMatter: "1", idUser: "4", avatar: "4.jpg", name: "prueba 1", lastname: "prueba1", semester: "Septimo", carrier: "Ing Software", matter: "Programacion en Angular", state: "0") )
        return matters
    }
    
}
