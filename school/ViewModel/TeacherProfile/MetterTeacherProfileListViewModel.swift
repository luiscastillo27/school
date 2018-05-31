//
//  MetterTeacherProfileListViewModel.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class MetterTeacherProfileListViewModel {
    
    public var metterTeacherProfileViewModel: [MetterTeacherProfileViewModel] = [MetterTeacherProfileViewModel]()
    private var dataMetterTeacherProfile: DataMetterTeacherProfile
    
    init(dataMetterTeacherProfile: DataMetterTeacherProfile) {
        self.dataMetterTeacherProfile = dataMetterTeacherProfile
        getAllMatterProfile()
    }
    
    func getAllMatterProfile(){
        let metters = self.dataMetterTeacherProfile.getAllMetterProfile()
        self.metterTeacherProfileViewModel = metters.map { metter in
            return MetterTeacherProfileViewModel(metterProfile: metter)
        }
    }
    
}
