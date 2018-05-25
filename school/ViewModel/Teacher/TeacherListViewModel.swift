//
//  TeacherListViewModel.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation


class TeacherListViewModel{
    
    var teachersViewModel: [TeacherViewModel] = [TeacherViewModel]()
    private var dataTeacher: DataTeacher
    
    init(dataTeacher: DataTeacher) {
        self.dataTeacher = dataTeacher
        getTeachers()
    }
    
    private func getTeachers(){
        let teachers = self.dataTeacher.getTeachers()
        self.teachersViewModel = teachers.map{ teacher in
            return TeacherViewModel(teacher: teacher)
        }
    }
    
}
