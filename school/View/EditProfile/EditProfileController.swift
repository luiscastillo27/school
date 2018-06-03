//
//  EditProfileController.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class EditProfileController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
    }

    @IBAction func dissmis(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}
