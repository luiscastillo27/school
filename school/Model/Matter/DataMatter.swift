//
//  DataMatter.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class DataMatter{
    
    var matters = [Matter]()
    func getAllMatters() -> [Matter] {
        matters.append( Matter(metter: "Programacion iOS", avatar: "user", name: "Luis Manuel", lastname: "Castillo"))
        matters.append( Matter(metter: "Programacion Android", avatar: "user", name: "Ana Mireya", lastname: "Jimenez Perez"))
        return matters
    }
    
}
