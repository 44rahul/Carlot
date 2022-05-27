//
//  FollowingVC.swift
//  Carlot
//
//  Created by emizentech on 5/6/22.
//

import UIKit

class FollowingVC: UIViewController {
    
    @IBOutlet weak var tableListView : UITableView!
    var ArrUserName = [String]()
    var ArrFollowerCount:[Int] = [350,360,244,260,560,657,123,654,255]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ArrUserName = ["Esther Howard", "Marvin McKinney" , "Wade Warren","Leslie Alexander", "Cody Fisher", "Ralph Edwards", "Jane Cooper", "Guy Hawkins", "Arlane McCoy"]
        
        //ArrFollowerCount = [350,360,244,260,560,657,123,654,255]
        
        tableListView.delegate = self
        tableListView.dataSource = self

        
    }
    
    @IBAction func backbuttonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

extension FollowingVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrUserName.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollwingCell", for: indexPath) as! FollwingCell
        
        cell.user_name.text = ArrUserName[indexPath.row]
        let follower_int = ArrFollowerCount[indexPath.row]
        cell.following_count.text = String (follower_int) + " Followers"
        cell.unfollow_btn.layer.cornerRadius = 6.0
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 71.0
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //let vc = MyOrderVC.instance(.main) as! MyOrderVC
//        let vc = SideMenuVC.instance(.main) as! SideMenuVC
//        self.navigationController?.pushViewController(vc, animated: true)
    }

    
}
