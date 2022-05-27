//
//  MyOrderCell.swift
//  Carlot
//
//  Created by emizentech on 5/10/22.
//

import UIKit

class MyOrderCell: UITableViewCell {

    @IBOutlet weak var carModel_image : UIImageView!
    @IBOutlet weak var model_Name : UILabel!
    @IBOutlet weak var Model_Status : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
