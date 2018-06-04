//
//  MessagerViewModel.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class MessagerViewModel {
    
    var idMessage: String
    var message: String
    var date: String
    var transmitter: String
    var receiver: String
    
    init(msn: Messager) {
        self.idMessage = msn.idMessage
        self.message = msn.message
        self.date = msn.date
        self.transmitter = msn.transmitter
        self.receiver = msn.receiver
    }
    
}
