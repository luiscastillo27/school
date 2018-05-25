//
//  SettingsController.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {

    
    @IBOutlet weak var cardViewTitle: UIView!
    @IBOutlet weak var listenerEditUser: UIButton!
    @IBOutlet weak var cardViewState: UIView!
    @IBOutlet weak var listenerExit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardViewTitle.layer.shadowColor = UIColor.black.cgColor
        cardViewTitle.layer.shadowOpacity = 0.5
        cardViewTitle.layer.shadowOffset = CGSize.zero
        
        listenerEditUser.layer.shadowColor = UIColor.black.cgColor
        listenerEditUser.layer.shadowOpacity = 0.5
        listenerEditUser.layer.shadowOffset = CGSize.zero
        
        cardViewState.layer.shadowColor = UIColor.black.cgColor
        cardViewState.layer.shadowOpacity = 0.5
        cardViewState.layer.shadowOffset = CGSize.zero
        
        listenerExit.layer.shadowColor = UIColor.black.cgColor
        listenerExit.layer.shadowOpacity = 0.5
        listenerExit.layer.shadowOffset = CGSize.zero
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
