//
//  MetterTeacherProfileViewModel.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class MetterTeacherProfileViewModel {
    
    var id: String
    var name: String
    var year: String
    
    init(metterProfile: MetterTeacherProfile) {
        self.id = metterProfile.id
        self.name = metterProfile.name
        self.year = metterProfile.year
    }
    
}
