//
//  ListingVC.swift
//  Carlot
//
//  Created by emizen on 5/5/22.
//

import UIKit

class ListingVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var listingView: UIView!
    @IBOutlet weak var listingTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       // addTopBorder(with: UIColor.white, andWidth: 1.0)
        
        listingView.layer.cornerRadius = 20
        listingView.layer.borderWidth = 0.3
        listingView.layer.borderColor = UIColor.white.cgColor
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ProductTableCell
     //   cell.searchSugglbl.text = SearchSuggestionArr[indexPath.row]
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 138
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    
    func addTopBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        border.frame = CGRect(x: 0, y: 0, width: listingView.frame.size.width, height: borderWidth)
       
       // border.clipsToBounds = true
        border.layer.cornerRadius = 10

        border.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        listingView.addSubview(border)
      //  addSubview(border)
        
    }

}
