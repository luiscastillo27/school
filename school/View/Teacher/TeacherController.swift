//
//  TeacherController.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit
import Lottie

class TeacherController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var txtLoading: UILabel!
    @IBOutlet weak var viewSearch: UIView!
    @IBOutlet weak var loading: UIView!
    private var teacherListViewModel: TeacherListViewModel!
    private var dataTeacher: DataTeacher!
    private let animationView = LOTAnimationView(name: "loading")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
//        animationView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        animationView.backgroundColor = UIColor.blue
//        animationView.loopAnimation = true
//        view.addSubview(animationView)
//        animationView.play()
        
        table.delegate = self
        table.dataSource = self
        viewSearch.layer.shadowColor = UIColor.black.cgColor
        viewSearch.layer.shadowOpacity = 0.5
        viewSearch.layer.shadowOffset = CGSize.zero
        self.table.isHidden = true
        self.txtLoading.isHidden = false
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
        if self.teacherListViewModel.teachersViewModel.count == 0 {
            self.txtLoading.text = "No cuentas con ningún profesor"
        } else {
            self.table.isHidden = false
            self.txtLoading.isHidden = true
        }
        return self.teacherListViewModel.teachersViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TeachersCell
        let teacher = self.teacherListViewModel.teachersViewModel[indexPath.row]
        cell.listenerTeacher.text = "\(teacher.name!) \(teacher.lastname!)"
        cell.listenerMatter.text = teacher.matter
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goProfileTeacher", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goProfileTeacher" {
            if let id = table.indexPathForSelectedRow {
                let destino = segue.destination as! ProfileTeacherController
                let fila = self.teacherListViewModel.teachersViewModel[id.row]
                destino.selectedTeacherViewModel = fila
            }
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}
