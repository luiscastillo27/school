//
//  QualificationController.swift
//  school
//
//  Created by admin on 30/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class QualificationController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var firstPartial: UIView!
    @IBOutlet weak var secondPartial: UIView!
    @IBOutlet weak var thirdPartial: UIView!
    public var selectedQualification: MetterViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("la data selecionada es: \(selectedQualification.matter)")
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
        
        firstPartial.layer.shadowColor = UIColor.black.cgColor
        firstPartial.layer.shadowOpacity = 0.5
        firstPartial.layer.shadowOffset = CGSize.zero
        
        secondPartial.layer.shadowColor = UIColor.black.cgColor
        secondPartial.layer.shadowOpacity = 0.5
        secondPartial.layer.shadowOffset = CGSize.zero
        
        thirdPartial.layer.shadowColor = UIColor.black.cgColor
        thirdPartial.layer.shadowOpacity = 0.5
        thirdPartial.layer.shadowOffset = CGSize.zero
    }
    
    @IBAction func dissmis(_ sender: UIButton) {
        dismiss(animated: true, completion: nil )
    }
    

}
