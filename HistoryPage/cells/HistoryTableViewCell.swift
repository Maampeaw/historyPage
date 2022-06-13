//
//  HistoryTableViewCell.swift
//  HistoryPage
//
//  Created by user on 6/13/22.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var name1: UILabel!
    
    @IBOutlet weak var viewContainer: UIView!{
        didSet{
            viewContainer.layer.borderWidth = 0.5
            viewContainer.layer.borderColor = UIColor.gray.cgColor
            viewContainer.layer.cornerRadius = 30
        }
    }
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var successButton: UIButton!
    @IBOutlet weak var thumbNail: UIImageView!
    @IBOutlet weak var phoneNumber: UILabel!
    
    @IBOutlet weak var amount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
