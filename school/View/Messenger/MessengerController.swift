//
//  MessengerController.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class MessengerController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var txtTitle: UILabel!
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var listenerMessage: UITextField!
    @IBOutlet weak var listenerSend: UIButton!
    public var selectedMessage: Any!
    private var dataMessager: DataMessanger!
    private var messageListViewModel: MessagerListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        
        self.dataMessager = DataMessanger()
        self.messageListViewModel = MessagerListViewModel(dataMessager: self.dataMessager )
        self.table.reloadData()
        txtTitle.text = self.messageListViewModel.messengerViewModel[0].receiver
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
        
        listenerSend.isEnabled = false
        print("el maestro selecionado es: \(selectedMessage!)")
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.messageListViewModel.messengerViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MessengerReceiverCell
        let msn = self.messageListViewModel.messengerViewModel[indexPath.row]
        cell.txtTransmitter.text = "  \(msn.message)  "
        return cell
    }
    
    @IBAction func dissmis(_ sender: UIButton) {
        dismiss(animated: true, completion: nil )
    }
    
    @IBAction func changedMessage(_ sender: UITextField) {
        
    }
    
    @IBAction func sendMessage(_ sender: UIButton) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
