//
//  DataMessange.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class DataMessanger {
    
    public var messages: [Messager] = [Messager]()
    
    func getAllMessages() -> [Messager]{
        messages.append( Messager(id: "1", message: "Hola bb", date: "27/03/15", transmitter: "Luis Castillo", receiver: "Ana Mireya"))
        messages.append( Messager(id: "1", message: "Como estas princesa jim", date: "27/03/15", transmitter: "Ana Mireya", receiver: "Luis Castillo"))
        return messages
    }
    
}
