//
//  MessengerCell.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class MessengerReceiverCell: UITableViewCell {

    @IBOutlet weak var txtReceiver: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        txtReceiver.layer.cornerRadius = 5.0
        txtReceiver.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
