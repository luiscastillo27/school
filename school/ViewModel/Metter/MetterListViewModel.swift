//
//  MetterListViewModel.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class MetterListViewModel{
    
    var matterViewModel: [MetterViewModel] = [MetterViewModel]()
    private var dataMatter: DataMatter
    
    init(dataMatter: DataMatter) {
        self.dataMatter = dataMatter
        getMatters()
    }
    
    func getMatters(){
        let metters = self.dataMatter.getAllMatters()
        self.matterViewModel = metters.map{ metter in
            return MetterViewModel(metter: metter)
        }
    }
    
}
