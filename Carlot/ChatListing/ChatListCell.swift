//
//  ChatListCell.swift
//  Carlot
//
//  Created by emizentech on 5/20/22.
//

import UIKit

class ChatListCell: UITableViewCell {

    @IBOutlet weak var image_Chatuser: UIImageView!
    
    @IBOutlet weak var lbl_UserProfession: UILabel!
    @IBOutlet weak var lbl_ChatUserName: UILabel!
    @IBOutlet weak var lbl_chattime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
