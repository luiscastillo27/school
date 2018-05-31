//
//  Message.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class Messager {
    
    var id: String
    var message: String
    var date: String
    var transmitter: String
    var receiver: String
    
    init(id: String, message: String, date: String, transmitter: String, receiver: String) {
        self.id = id
        self.message = message
        self.date = date
        self.transmitter = transmitter
        self.receiver = receiver
    }
    
}
