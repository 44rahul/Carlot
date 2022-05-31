//
//  NotificationCell.swift
//  Carlot
//
//  Created by emizentech on 5/18/22.
//

import UIKit

class NotificationCell: UITableViewCell {
    
    @IBOutlet weak var lbl_update: UILabel!
    @IBOutlet weak var lbl_details: UILabel!
    
    @IBOutlet weak var lbl_date: UILabel!
    @IBOutlet weak var lbl_time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
