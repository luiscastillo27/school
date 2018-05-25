//
//  TeachersCell.swift
//  school
//
//  Created by admin on 25/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class TeachersCell: UITableViewCell {

    @IBOutlet weak var listenerAvatar: UIView!
    @IBOutlet weak var listenerTeacher: UILabel!
    @IBOutlet weak var listenerMatter: UILabel!
    @IBOutlet weak var viewCard: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCard.layer.shadowColor = UIColor.black.cgColor
        viewCard.layer.shadowOpacity = 0.5
        viewCard.layer.shadowOffset = CGSize.zero
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
