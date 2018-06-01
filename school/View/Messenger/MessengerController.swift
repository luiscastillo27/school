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
    @IBOutlet weak var keyboardHeightLayoutConstraint: NSLayoutConstraint!
    
    public var selectedMessage: Any!
    private var dataMessager: DataMessanger!
    private var messageListViewModel: MessagerListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardNotification), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
        
        self.dataMessager = DataMessanger()
        self.messageListViewModel = MessagerListViewModel(dataMessager: self.dataMessager )
        self.table.reloadData()
        txtTitle.text = self.messageListViewModel.messengerViewModel[0].receiver
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
        
        listenerSend.isEnabled = false
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.messageListViewModel.messengerViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if self.messageListViewModel.messengerViewModel[indexPath.row].receiver == "Ana Mireya" {
            let cell = table.dequeueReusableCell(withIdentifier: "cellReceiver", for: indexPath) as! MessengerReceiverCell
            let msn = self.messageListViewModel.messengerViewModel[indexPath.row]
            cell.txtReceiver.text = "  \(msn.message)  "
            return cell
        } else {
            let cell = table.dequeueReusableCell(withIdentifier: "cellTransmitter", for: indexPath) as! MessengerTransmitterCell
            let msn = self.messageListViewModel.messengerViewModel[indexPath.row]
            cell.txtTransmitter.text = "  \(msn.message)  "
            return cell
        }

    }
    
    @IBAction func dissmis(_ sender: UIButton) {
        dismiss(animated: true, completion: nil )
    }
    
    @IBAction func changedMessage(_ sender: UITextField) {
        
    }
    
    @IBAction func sendMessage(_ sender: UIButton) {
        
    }
    
    @objc func keyboardNotification(notification: NSNotification){
        if let userInfo = notification.userInfo{
            let endFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
            let duration:TimeInterval = (userInfo[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber)?.doubleValue ?? 0
            let animationCurveRawNSN = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? NSNumber
            let animationCurveRaw = animationCurveRawNSN?.uintValue ?? UIViewAnimationOptions.curveEaseInOut.rawValue
            let animationCurve:UIViewAnimationOptions = UIViewAnimationOptions(rawValue: animationCurveRaw)
            if (endFrame?.origin.y)! >= UIScreen.main.bounds.size.height {
                self.keyboardHeightLayoutConstraint?.constant = 0.0
            } else {
                var frameEnd = (endFrame?.size.height)!
                frameEnd = frameEnd * -1
                self.keyboardHeightLayoutConstraint?.constant = frameEnd
            }
            UIView.animate(withDuration: duration, delay: TimeInterval(0), options: animationCurve, animations: { self.view.layoutIfNeeded() }, completion: nil)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
