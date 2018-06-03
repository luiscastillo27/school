//
//  PollsListCell.swift
//  school
//
//  Created by admin on 02/06/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class PollsListCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var txtTeacherName: UILabel!
    @IBOutlet weak var txtTeacherMatter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize.zero
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
