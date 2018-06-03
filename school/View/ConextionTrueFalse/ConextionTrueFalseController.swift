//
//  ConextionTrueFalseController.swift
//  school
//
//  Created by admin on 03/06/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit
import Lottie

class ConextionTrueFalseController: UIViewController {

    private var reachability: Reachability!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animationView = LOTAnimationView(name: "internet")
        self.view.addSubview(animationView)
        animationView.contentMode = .scaleAspectFill
        animationView.loopAnimation = true
        animationView.frame = CGRect(x:0, y:0, width:200, height:200)
        animationView.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2)
        animationView.play()
        
        self.reachability = Reachability.init()
        NotificationCenter.default.addObserver(self, selector: #selector(conexion), name: Notification.Name.reachabilityChanged, object: reachability)
        do {
            try reachability.startNotifier()
        } catch {
            print("se ha producido un error")
        }
        
    }
    
    @objc func conexion( note:Notification ){
        let reach = note.object as! Reachability
        if reach.connection == .cellular || reach.connection == .wifi {
            dismiss(animated: true, completion: nil )
        }
    }

}
