//
//  CustomTableViewCell.swift
//  faiaz_rahman_30024_tableView
//
//  Created by bjit on 6/12/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageFrameX: UIImageView!
    @IBOutlet weak var txtLabelX: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
