//
//  ContactController.swift
//  school
//
//  Created by admin on 26/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class ContactController: UIViewController {

    
    @IBOutlet weak var viewCardTitle: UIView!
    @IBOutlet weak var txtTitleController: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewCardTitle.layer.shadowColor = UIColor.black.cgColor
        viewCardTitle.layer.shadowOpacity = 0.5
        viewCardTitle.layer.shadowOffset = CGSize.zero
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
