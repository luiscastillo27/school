//
//  ProfileTeacherController.swift
//  school
//
//  Created by admin on 28/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class ProfileTeacherController: UIViewController {

    @IBOutlet weak var cardRanting: UIView!
    @IBOutlet weak var cardView: UIView!
    public var selectedTeacherViewModel: TeacherViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedTeacherViewModel.id)
        
        cardRanting.layer.shadowColor = UIColor.black.cgColor
        cardRanting.layer.shadowOpacity = 0.5
        cardRanting.layer.shadowOffset = CGSize.zero
        
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
    }
    
    @IBAction func arrow(_ sender: UIButton) {
        dismiss(animated: true, completion: nil )
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
