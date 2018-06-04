//
//  MessengerTransmitterCell.swift
//  school
//
//  Created by admin on 31/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class MessengerTransmitterCell: UITableViewCell {

    @IBOutlet weak var txtTransmitter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        txtTransmitter.layer.cornerRadius = 5.0
        txtTransmitter.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
