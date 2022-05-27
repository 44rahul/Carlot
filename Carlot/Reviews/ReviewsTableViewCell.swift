//
//  ReviewsTableViewCell.swift
//  Carlot
//
//  Created by emizen on 5/9/22.
//

import UIKit

class ReviewsTableViewCell: UITableViewCell {

    @IBOutlet weak var reviewsView: UIView!
    @IBOutlet weak var userImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        reviewsView.layer.cornerRadius = 6
        reviewsView.layer.borderColor = UIColor.gray.cgColor
        reviewsView.layer.borderWidth = 0.5
        
        userImg.layer.cornerRadius = userImg.frame.size.height/2
        userImg.layer.borderColor = UIColor(red: 255/255, green: 207/255, blue: 4/255, alpha: 1).cgColor
        userImg.layer.borderWidth = 1.0
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
