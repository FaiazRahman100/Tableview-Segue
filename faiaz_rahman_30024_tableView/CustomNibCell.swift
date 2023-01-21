//
//  CustomNibCell.swift
//  faiaz_rahman_30024_tableView
//
//  Created by bjit on 6/12/22.
//

import UIKit

class CustomNibCell: UITableViewCell {

    @IBOutlet weak var nibImageFrame1: UIImageView!
    @IBOutlet weak var nibImageFrame2: UIImageView!
    @IBOutlet weak var nibTextLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
