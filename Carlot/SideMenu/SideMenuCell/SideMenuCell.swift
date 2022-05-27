//
//  SideMenuCell.swift
//  Carlot
//
//  Created by emizentech on 5/11/22.
//

import UIKit

class SideMenuCell: UITableViewCell {
    
    @IBOutlet weak var sidemenuImages : UIImageView!
    @IBOutlet weak var lblmenuItem : UILabel!
    @IBOutlet weak var switchbtn : UISwitch!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
