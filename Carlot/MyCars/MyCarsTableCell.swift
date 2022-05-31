//
//  MyCarsTableCell.swift
//  Carlot
//
//  Created by emizentech on 5/27/22.
//

import UIKit

class MyCarsTableCell: UITableViewCell {

    @IBOutlet weak var ProductDetail: UILabel!
    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var ProductImg: UIImageView!
    @IBOutlet weak var ProductCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ProductCell.layer.cornerRadius = 4
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
