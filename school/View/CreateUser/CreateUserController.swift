//
//  CreateUserController.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class CreateUserController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func arraw(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}
