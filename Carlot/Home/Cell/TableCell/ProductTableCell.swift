//
//  ProductTableCell.swift
//  Carlot
//
//  Created by emizen on 5/4/22.
//

import UIKit

class ProductTableCell: UITableViewCell {

    @IBOutlet weak var ProductDetail: UILabel!
    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var ProductImg: UIImageView!
    @IBOutlet weak var ProductCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ProductCell.layer.cornerRadius = 4
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
