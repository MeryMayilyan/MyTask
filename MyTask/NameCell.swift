//
//  NameCell.swift
//  MyTask
//
//  Created by Mery  on 6/9/18.
//  Copyright © 2018 Mery . All rights reserved.
//

import UIKit

class NameCell: UITableViewCell {

    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var callButtonTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var nameLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var announcementLabel: UILabel!
    @IBOutlet weak var nameAndCallView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var announcementLabelTopConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        nameLabelTopConstraint.constant = personImageView.layer.frame.size.height / 3 - nameLabel.layer.frame.size.height / 2
        callButtonTopConstraint.constant = nameLabelTopConstraint.constant + announcementLabelTopConstraint.constant / 2
    }

    
}
