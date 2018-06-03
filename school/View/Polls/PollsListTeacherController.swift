//
//  PollsListTeacherController.swift
//  school
//
//  Created by admin on 02/06/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class PollsListTeacherController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var cardView: UIView!
    private var teacherListViewModel: TeacherListViewModel!
    private var dataTeacher: DataTeacher!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
        table.delegate = self
        table.dataSource = self
        self.dataTeacher = DataTeacher()
        self.teacherListViewModel = TeacherListViewModel(dataTeacher: self.dataTeacher )
        DispatchQueue.main.async {
            self.table.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.teacherListViewModel.teachersViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PollsListCell
        let teacher = self.teacherListViewModel.teachersViewModel[indexPath.row]
        cell.txtTeacherName.text = "\(teacher.name!) \(teacher.lastname!)"
        cell.txtTeacherMatter.text = teacher.matter
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goQuestion", sender: self )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goQuestion" {
            if let id = table.indexPathForSelectedRow {
                let destination = segue.destination as! PollsTeacherQuestionsController
                let teach = self.teacherListViewModel.teachersViewModel[id.row]
                destination.selectedTeacherViewModel = teach
            }
        }
    }

}
