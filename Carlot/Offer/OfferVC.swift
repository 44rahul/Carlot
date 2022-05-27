//
//  OfferVC.swift
//  Carlot
//
//  Created by emizentech on 5/17/22.
//

import UIKit

class OfferVC: UIViewController {
    
    @IBOutlet weak var orderTblList : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }


}



extension OfferVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OfferTableCell", for: indexPath) as! OfferTableCell
        
//        cell.user_name.text = ArrUserName[indexPath.row]
//        let follower_int = ArrFollowerCount[indexPath.row]
//        cell.following_count.text = String (follower_int) + " Followers"
//        cell.unfollow_btn.layer.cornerRadius = 6.0
        
        //cell.mainView.layer.
        cell.mainView.layer.borderColor = UIColor.gray.cgColor
        cell.mainView.layer.cornerRadius = 10.0
        cell.mainView.layer.borderWidth = 0.5
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 249
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //let vc = MyOrderVC.instance(.main) as! MyOrderVC
//        let vc = SideMenuVC.instance(.main) as! SideMenuVC
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
