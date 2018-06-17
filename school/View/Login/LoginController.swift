//
//  ViewController.swift
//  school
//
//  Created by admin on 24/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

import RevealingSplashView

class LoginController: UIViewController {
    
    let revealingSplashView = RevealingSplashView(
        iconImage: UIImage(named: "icon-sanus")!,
        iconInitialSize: CGSize(width: 161, height: 127),
        backgroundColor: UIColor.init(red: 245/255, green: 246/255, blue: 250/255, alpha: 1.0)
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(revealingSplashView)
        self.revealingSplashView.animationType = SplashAnimationType.popAndZoomOut
        self.revealingSplashView.startAnimation()
        //self.view.bindKeyboard()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

