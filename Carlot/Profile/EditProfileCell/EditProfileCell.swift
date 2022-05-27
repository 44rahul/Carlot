//
//  EditProfileCell.swift
//  Carlot
//
//  Created by emizentech on 5/11/22.
//

import UIKit

class EditProfileCell: UITableViewCell {

    @IBOutlet weak var lblName : UILabel!
    @IBOutlet weak var txtEditInfo : UITextField!
    @IBOutlet weak var change_btn : UIButton!
    @IBOutlet weak var save_btn : UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
