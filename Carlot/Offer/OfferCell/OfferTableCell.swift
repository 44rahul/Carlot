//
//  OfferTableCell.swift
//  Carlot
//
//  Created by emizentech on 5/17/22.
//

import UIKit

class OfferTableCell: UITableViewCell {
    @IBOutlet weak var mainView : UIView!
    @IBOutlet weak var user_img : UIImageView!
    @IBOutlet weak var user_Name : UILabel!
    @IBOutlet weak var lblofferprice : UILabel!
    @IBOutlet weak var lblDate : UILabel!
    @IBOutlet weak var lblTime : UILabel!
    
    @IBOutlet weak var model_img : UIImageView!
    @IBOutlet weak var lblModel_price : UILabel!
    @IBOutlet weak var lblModel_address : UILabel!
    @IBOutlet weak var btn_Accept : UIButton!
    @IBOutlet weak var btn_Edit : UIButton!
    @IBOutlet weak var btn_MakeOffer : UIButton!
    @IBOutlet weak var lblModel_Name : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
