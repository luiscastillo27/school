//
//  DataMetterTeacherProfile.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class DataMetterTeacherProfile {
    private var metterTeacher: [MetterTeacherProfile] = [MetterTeacherProfile]()
    
    func getAllMetterProfile() -> [MetterTeacherProfile] {
        metterTeacher.append( MetterTeacherProfile(id: "1", name: "Programacion iOS", year: "2018"))
        metterTeacher.append( MetterTeacherProfile(id: "1", name: "Programacion WEB", year: "2017"))
        metterTeacher.append( MetterTeacherProfile(id: "1", name: "Creacion de API's", year: "2017"))
        return metterTeacher
    }
}
