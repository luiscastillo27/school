//
//  Qualification.swift
//  school
//
//  Created by admin on 03/06/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class Qualification: User {
    
    var idMatter: String
    var parcial1: String
    var parcial2: String
    var parcial3: String
    var qualification: String
    var group: String
    var registration_date: String
    
    init( idUser: String, idMatter: String, parcial1: String, parcial2: String, parcial3: String, qualification: String, group: String, registration_date: String ) {
        self.idMatter = idMatter
        self.parcial1 = parcial1
        self.parcial2 = parcial2
        self.parcial3 = parcial3
        self.qualification = qualification
        self.group = group
        self.registration_date = registration_date
        super.init(idUser: idUser)
    }
    
    
}
