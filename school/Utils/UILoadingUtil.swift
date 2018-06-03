//
//  UILoadingUtil.swift
//  school
//
//  Created by admin on 03/06/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation
import Lottie
import UIKit

extension UIViewController {
    
    func loading( animationView:LOTAnimationView ){
        self.view.addSubview(animationView)
        animationView.contentMode = .scaleAspectFill
        animationView.loopAnimation = true
        animationView.frame = CGRect(x:0, y:0, width:100, height:100)
        animationView.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2)
        animationView.play()
    }
    
}
