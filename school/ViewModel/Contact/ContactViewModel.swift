//
//  ContactViewModel.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class ContactViewModel {
    
    var name: String
    var lastname: String
    var online: Bool
    
    init(contact: Contact) {
        self.name = contact.name
        self.lastname = contact.lastname
        self.online = contact.online
    }
}
