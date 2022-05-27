//
//  ProfileCell.swift
//  Carlot
//
//  Created by emizentech on 5/11/22.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    @IBOutlet weak var lblName : UILabel!
    @IBOutlet weak var lblAddres : UILabel!
    @IBOutlet weak var txt_address : UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
