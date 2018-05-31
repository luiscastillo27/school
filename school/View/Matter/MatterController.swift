//
//  MatterController.swift
//  school
//
//  Created by admin on 26/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class MatterController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var cardViewTitle: UIView!
    @IBOutlet weak var table: UITableView!
    private var matterListViewModel: MetterListViewModel!
    private var dataMatter: DataMatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        self.dataMatter = DataMatter()
        self.matterListViewModel = MetterListViewModel(dataMatter: self.dataMatter)
        self.table.reloadData()
        cardViewTitle.layer.shadowColor = UIColor.black.cgColor
        cardViewTitle.layer.shadowOpacity = 0.5
        cardViewTitle.layer.shadowOffset = CGSize.zero
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.matterListViewModel.matterViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MetterCell
        let metter = self.matterListViewModel.matterViewModel[indexPath.row]
        cell.txtMatter.text = metter.matter
        cell.txtTeacher.text = "\(metter.name) \(metter.lastname)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goQualification", sender: self )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goQualification" {
            if let id = table.indexPathForSelectedRow {
                let destine = segue.destination as! QualificationController
                let data = self.matterListViewModel.matterViewModel[id.row]
                destine.selectedQualification = data
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
