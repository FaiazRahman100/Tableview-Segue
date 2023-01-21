//
//  SecondVCcustom.swift
//  faiaz_rahman_30024_tableView
//
//  Created by bjit on 6/12/22.
//

import UIKit

class SecondVCcustom: UITableViewCell {
    
    

    @IBOutlet weak var zoomImage: UIImageView!
    
    @IBOutlet weak var zoomLabel: UILabel!
    
    @IBOutlet weak var zoomDesc: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
