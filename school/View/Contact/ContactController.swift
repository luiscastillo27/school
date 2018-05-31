//
//  ContactController.swift
//  school
//
//  Created by admin on 26/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class ContactController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var viewCardTitle: UIView!
    @IBOutlet weak var txtTitleController: UILabel!
    private var contactListViewModel: ContactListViewModel!
    private var dataContact: DataContact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewCardTitle.layer.shadowColor = UIColor.black.cgColor
        viewCardTitle.layer.shadowOpacity = 0.5
        viewCardTitle.layer.shadowOffset = CGSize.zero
        
        table.dataSource = self
        table.delegate = self
        self.dataContact = DataContact()
        self.contactListViewModel = ContactListViewModel(dataContact: self.dataContact)
        self.table.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contactListViewModel.contactViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ContactCell
        let contact = self.contactListViewModel.contactViewModel[indexPath.row]
        cell.txtTeacher.text = "\(contact.name) \(contact.lastname)"
        if contact.online {
            cell.txtOnline.tintColor = UIColor.green
            cell.txtOnline.text = "En linea"
        } else {
            cell.txtOnline.tintColor = UIColor.red
            cell.txtOnline.text = "Desconectado"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goMessenger", sender: self )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goMessenger" {
            if let id = table.indexPathForSelectedRow {
                let destination = segue.destination as! MessengerController
                let data = self.contactListViewModel.contactViewModel[id.row]
                destination.selectedMessage = data
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}
