//
//  Alert.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation
import UIKit

protocol AlertProtocol {
    func actionAcept( this: UIViewController, acept: String? )
    func actionCancel( this: UIViewController, cancel: String? )
}

class UiAlert {

    public func alertSimple( this: UIViewController, titileAlert: String?, bodyAlert: String?, actionAlert: String? ) -> Void {
        let alert = UIAlertController(title: titileAlert, message: bodyAlert, preferredStyle: .alert);
        let acept = UIAlertAction(title: "Aceptar", style: .default, handler: { (action) in
            self.actionAcept( this:this, acept: actionAlert )
        })
        alert.addAction(acept);
        this.present(alert, animated: true, completion: nil);
    }
    
    public func alertAvanced( this: UIViewController, titileAlert: String?, bodyAlert: String?, actionAcept: String?, cancelAlert: String? ) -> Void {
        let alert = UIAlertController(title: titileAlert, message: bodyAlert, preferredStyle: .alert);
        let acept = UIAlertAction(title: "Aceptar", style: .default, handler: { (action) in
            self.actionAcept( this:this, acept: actionAcept )
        })
        let cancel = UIAlertAction(title: "Cancelar", style: .default, handler: { (action) in
            self.actionCancel( this:this, cancel: cancelAlert )
        })
        alert.addAction(acept);
        alert.addAction(cancel);
        this.present(alert, animated: true, completion: nil);
    }
    
    
    func actionAcept(this: UIViewController, acept: String?) {
        
    }
    
    func actionCancel(this: UIViewController, cancel: String?) {
        
    }

    
}
