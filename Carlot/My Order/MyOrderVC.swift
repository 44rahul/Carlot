//
//  MyOrderVC.swift
//  Carlot
//
//  Created by emizentech on 5/10/22.
//

import UIKit

class MyOrderVC: UIViewController {
    
    @IBOutlet weak var popupMainview: UIView!
    @IBOutlet weak var Bg_view : UIView!
    @IBOutlet weak var search_view : UIView!
    @IBOutlet weak var txt_search : UITextField!
    @IBOutlet weak var cross_btn : UIButton!
    @IBOutlet weak var filter_btn : UIButton!
    @IBOutlet weak var orderList_table : UITableView!
    
    var ArrModelName = [String]()
    var ArrModelStatus = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Bg_view.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        Bg_view.layer.cornerRadius = 20.0
        Bg_view.layer.borderWidth = 0.5
        
        
        search_view.layer.borderColor = UIColor(red: 130, green: 130, blue: 130, alpha: 1).cgColor
        search_view.layer.cornerRadius = 10.0
        search_view.layer.borderWidth = 0.5

        // Do any additional setup after loading the view.
        popupMainview.isHidden = true
        ArrModelName = ["Tesla Model X 2018", "Tesla Model X 2019" , "Tesla Model X 2020","Tesla Model X 2021", "Tesla Model X 2022", "Tesla Model X 2018", "Tesla Model X 2019", "Tesla Model X 2020", "Tesla Model X 2021"]
        ArrModelStatus = ["On the Way", "Delivered on June 2020" , "Delivered on June 2022","Delivered on June 2021", "Delivered on March 2022", "Delivered on September 2020", "Delivered on May 2021", "Delivered on May 2022", "Delivered on June 2021"]
    }
    @IBAction func backbuttonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnApplyClicked(_ sender: Any) {
    }
    
    @IBAction func btnCancelClicked(_ sender: Any) {
        self.popupMainview.isHidden = true
    }
}

extension MyOrderVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrModelStatus.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyOrderCell", for: indexPath) as! MyOrderCell
        
//        cell.user_name.text = ArrUserName[indexPath.row]
//        let follower_int = ArrFollowerCount[indexPath.row]
//        cell.following_count.text = String (follower_int) + " Followers"
        cell.Model_Status.text = ArrModelStatus[indexPath.row]
        cell.model_Name.text = ArrModelName[indexPath.row]
        //cell.unfollow_btn.layer.cornerRadius = 6.0
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        popupMainview.isHidden = false

//        let vc = ProfileVC.instance(.main) as! ProfileVC
//        //let vc = SideMenuVC.instance(.main) as! SideMenuVC
//
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
