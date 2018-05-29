//
//  ContactListViewModel.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class ContactListViewModel {
    
    public var contactViewModel: [ContactViewModel] = [ContactViewModel]()
    private var dataContact: DataContact
    
    init(dataContact: DataContact) {
        self.dataContact = dataContact
        getContacts()
    }
    
    func getContacts(){
        let contacts = self.dataContact.getAllContacts()
        self.contactViewModel = contacts.map { contact in
            return ContactViewModel(contact: contact )
        }
    }

}
