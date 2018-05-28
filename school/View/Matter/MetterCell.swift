//
//  MetterCell.swift
//  school
//
//  Created by admin on 27/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class MetterCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var txtMatter: UILabel!
    @IBOutlet weak var txtTeacher: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
