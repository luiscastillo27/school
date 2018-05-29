//
//  DataContact.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class DataContact{
    
    private var contacts: [Contact] = [Contact]()
    
    func getAllContacts() ->[Contact]{
        contacts.append( Contact(name: "Luis Manuel", lastname: "Castillo Zamorano", online: true) )
        contacts.append( Contact(name: "Ana Mireya", lastname: "Jimenez Perez", online: false) )
        return contacts
    }
    
}
