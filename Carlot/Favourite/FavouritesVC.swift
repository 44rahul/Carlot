//
//  FavouritesVC.swift
//  Carlot
//
//  Created by emizen on 5/19/22.
//

import UIKit

class FavouritesVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var favouritesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FavouritesTableViewCell
     //   cell.searchSugglbl.text = SearchSuggestionArr[indexPath.row]
        cell.selectionStyle = .none

        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
//
//    func addTopBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
//        let border = UIView()
//        border.backgroundColor = color
//        border.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
//        border.frame = CGRect(x: 0, y: 0, width: listingView.frame.size.width, height: borderWidth)
//
//       // border.clipsToBounds = true
//        border.layer.cornerRadius = 10
//
//        border.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
//        listingView.addSubview(border)
//      //  addSubview(border)
//
//    }
}
