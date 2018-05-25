//
//  TeacherController.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class TeacherController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    private var teacherListViewModel: TeacherListViewModel!
    private var dataTeacher: DataTeacher!
    @IBOutlet weak var viewSearch: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        viewSearch.layer.shadowColor = UIColor.black.cgColor
        viewSearch.layer.shadowOpacity = 0.5
        viewSearch.layer.shadowOffset = CGSize.zero
        self.dataTeacher = DataTeacher()
        self.teacherListViewModel = TeacherListViewModel(dataTeacher: self.dataTeacher )
        self.table.reloadData()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.teacherListViewModel.teachersViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TeachersCell
        let teacher = self.teacherListViewModel.teachersViewModel[indexPath.row]
        cell.listenerTeacher.text = teacher.name
        cell.listenerMatter.text = teacher.matter
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
