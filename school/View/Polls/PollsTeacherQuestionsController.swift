//
//  PollsTeacherQuestionsController.swift
//  school
//
//  Created by admin on 02/06/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class PollsTeacherQuestionsController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var listenerAddQuestion: UIButton!
    public var selectedTeacherViewModel: TeacherViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
    }

    @IBAction func arraw(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addAsnweres(_ sender: UIButton) {
        self.alertAvanced(this: self, titileAlert: "Confirmar respuestas", bodyAlert: "¿Estás seguro agregar estas respuestas?") { resp in
            if resp == "acept" {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    

}