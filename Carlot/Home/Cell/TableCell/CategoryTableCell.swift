//
//  CategoryTableCell.swift
//  Carlot
//
//  Created by emizen on 5/3/22.
//

import UIKit

class CategoryTableCell: UITableViewCell,UITableViewDataSource,UITableViewDelegate{
    
    var IntCount = 8

    @IBOutlet weak var tableHeight: NSLayoutConstraint!
    @IBOutlet weak var ProductTable: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ProductTable.delegate = self
        ProductTable.dataSource = self
        
        tableHeight.constant = 120 * 8
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

      return IntCount


    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ProductTableCell
        
            
            return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 120

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {

    }


}
