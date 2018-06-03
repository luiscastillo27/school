//
//  PollsTeacherQuestionsController.swift
//  school
//
//  Created by admin on 02/06/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class PollsTeacherQuestionsController: UIViewController {

    public var selectedTeacherViewModel: TeacherViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func arraw(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
