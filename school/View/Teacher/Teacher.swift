//
//  teacher.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class Teacher: User {
    
    public var carrier: String
    public var studies: String
    public var ranting: String
    public var professional_license: String
    public var matter: String
    
    init(idUser: String, avatar: String, name: String, lastname: String, state: String, carrier: String, studies: String, ranting: String, professional_license: String, matter: String){
        self.carrier = carrier
        self.studies  = studies
        self.ranting = ranting
        self.professional_license = professional_license
        self.matter = matter
        super.init(idUser: idUser, avatar: avatar, name: name, lastname: lastname, state: state)
    }
    
}
