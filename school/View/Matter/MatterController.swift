//
//  MatterController.swift
//  school
//
//  Created by admin on 26/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class MatterController: UIViewController {

    @IBOutlet weak var cardViewTitle: UIView!
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardViewTitle.layer.shadowColor = UIColor.black.cgColor
        cardViewTitle.layer.shadowOpacity = 0.5
        cardViewTitle.layer.shadowOffset = CGSize.zero
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
