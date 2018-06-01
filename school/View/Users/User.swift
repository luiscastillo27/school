//
//  User.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class User {
    
    public var idUser: String
    public var avatar: String
    public var name: String
    public var lastname: String
    public var state: String
    
    public var email: String?
    public var password: String?
    public var typeUser: String?
    
    init(idUser: String, avatar: String, email: String, password: String, name: String, lastname: String, typeUser: String, state: String){
        self.idUser = idUser
        self.avatar = avatar
        self.email = email
        self.password = password
        self.name = name
        self.lastname = lastname
        self.typeUser = typeUser
        self.state = state
    }
    
    init(idUser: String, avatar: String, name: String, lastname: String, state: String){
        self.idUser = idUser
        self.avatar = avatar
        self.name = name
        self.lastname = lastname
        self.state = state
    }
    
}
