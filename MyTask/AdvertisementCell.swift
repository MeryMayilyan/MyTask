//
//  AdvertisementCell.swift
//  MyTask
//
//  Created by Mery  on 6/7/18.
//  Copyright © 2018 Mery . All rights reserved.
//

import UIKit

//protocol AdvertisementCelldelegate : class {
//    func didPressCell()
//}

class AdvertisementCell: UITableViewCell {
    
//    weak var delegate : AdvertisementCelldelegate?
    @IBOutlet weak var advertisementView: UIView!
    @IBOutlet weak var advertisementImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet var itemParameterLabels: [UILabel]!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
        advertisementView.layer.shadowColor = UIColor.gray.cgColor
        advertisementView.layer.shadowOpacity = 0.25
        advertisementView.layer.shadowOffset = CGSize.zero
        advertisementView.layer.shadowRadius = 2.5
        advertisementView.layer.shadowOffset = CGSize.init(width: 0, height: 2.5)
        advertisementView.layer.cornerRadius = 5.0
        
    }
}
