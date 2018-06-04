//
//  Message.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class Messager {
    
    var idMessage: String
    var message: String
    var date: String
    var hour: String
    var transmitter: String
    var receiver: String
    
    init(idMessage: String, message: String, date: String, hour: String, transmitter: String, receiver: String) {
        self.idMessage = idMessage
        self.message = message
        self.date = date
        self.hour = hour
        self.transmitter = transmitter
        self.receiver = receiver
    }
    
}
