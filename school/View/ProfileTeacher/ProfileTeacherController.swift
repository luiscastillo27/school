//
//  ProfileTeacherController.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class ProfileTeacherController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var cardRanting: UIView!
    @IBOutlet weak var cardView: UIView!
    public var selectedTeacherViewModel: TeacherViewModel!
    private var dataMetterTeacher: DataMetterTeacherProfile!
    private var metterTeacherProfileListViewModel: MetterTeacherProfileListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        self.dataMetterTeacher = DataMetterTeacherProfile()
        self.metterTeacherProfileListViewModel = MetterTeacherProfileListViewModel(dataMetterTeacherProfile: self.dataMetterTeacher )
        self.table.reloadData()
        
        cardRanting.layer.shadowColor = UIColor.black.cgColor
        cardRanting.layer.shadowOpacity = 0.5
        cardRanting.layer.shadowOffset = CGSize.zero
        
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.metterTeacherProfileListViewModel.metterTeacherProfileViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTeacherCell
        let metter = self.metterTeacherProfileListViewModel.metterTeacherProfileViewModel[indexPath.row]
        cell.txtMatter.text = metter.name
        cell.txtYear.text = "Año - \(metter.year)"
        return cell
    }
    
    @IBAction func arrow(_ sender: UIButton) {
        dismiss(animated: true, completion: nil )
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}
