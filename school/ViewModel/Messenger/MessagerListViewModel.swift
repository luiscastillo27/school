//
//  MessagerListViewModel.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class MessagerListViewModel {
    
    public var messengerViewModel: [MessagerViewModel] = [MessagerViewModel]()
    private var dataMessager: DataMessanger
    
    init(dataMessager: DataMessanger) {
        self.dataMessager = dataMessager
        getAllMessager()
    }
    
    func getAllMessager(){
        let message = self.dataMessager.getAllMessages()
        self.messengerViewModel = message.map { data in
            return MessagerViewModel(msn: data)
        }
    }
    
}
