//
//  TeacherController.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit
import Lottie
import SocketIO

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

        //loading mostrar y ocultar
        //self.loading( animationView: self.animationView )
        //animationView.isHidden = true
        
        let manager = SocketManager(socketURL: URL(string: "http://192.168.0.104:2715")!, config: [.log(true), .compress])
        let socket = manager.defaultSocket
        socket.connect()
        
        table.delegate = self
        table.dataSource = self
        viewSearch.layer.shadowColor = UIColor.black.cgColor
        viewSearch.layer.shadowOpacity = 0.5
        viewSearch.layer.shadowOffset = CGSize.zero
        self.dataTeacher = DataTeacher()
        self.teacherListViewModel = TeacherListViewModel(dataTeacher: self.dataTeacher )
        DispatchQueue.main.async {
            //self.table.isHidden = true
            //self.txtLoading.isHidden = true
            self.table.reloadData()
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.teacherListViewModel.teachersViewModel.count == 0 {
            self.txtLoading.text = "No cuentas con ningún profesor"
            self.txtLoading.isHidden = false
            self.table.isHidden = true
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
