//
//  SideMenuVC.swift
//  Carlot
//
//  Created by emizentech on 5/11/22.
//

import UIKit

class SideMenuVC: UIViewController {
    
    var previousIndex = 0
    
    enum MenuType {
        case myprofile
        case notification
        case following
        case myorders
        case myfavourite
        case review
        case contact
        case others
        case logout

        case none
        
    }
    
    var checkimgstr = ""
    @IBOutlet weak var sideMenu_tbl : UITableView!
    @IBOutlet weak var lblUserName : UILabel!
    @IBOutlet weak var lblEmailAddress : UILabel!
    
    var height:CGFloat = 71
    //var ArrMenuList = ["My Profi"]
    var menuList: [MenuSection]!
    
    struct MenuSection {
        var list: [MenuDetail]!
    }
    
    struct MenuDetail {
        var text: String!
        var img: String!
        var type: MenuType!
    }
    
    static var selectIndex : MenuType?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuList = [MenuSection(list: [MenuDetail(text: "My Cars",img: "carSide", type: .myprofile),
                                       MenuDetail(text: "Notification", img: "notificationSide", type: .notification),
                                       MenuDetail(text: "Following", img: "followingSide", type: .following),
                                       MenuDetail(text: "Membership plan", img: "membershipSide", type: .myorders),
                                       MenuDetail(text: "Transaction", img: "transactionSide", type: .myfavourite),
                                       MenuDetail(text: "Reviews & ratings", img: "reviewSide", type: .review),
                                       MenuDetail(text: "Contact us", img: "contactSide", type: .contact),
                                       MenuDetail(text: "others", img: "otherSide", type: .others),
                                       MenuDetail(text: "Logout", img: "logoutSide", type: .logout),

        ])]
        
       
        sideMenu_tbl.register(UINib(nibName: "OthersSideCell", bundle: nil), forCellReuseIdentifier: "OthersSideCell")
    }
    
    @IBAction func backbuttonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension SideMenuVC : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList[section].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        if indexPath.row == 1{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell", for: indexPath) as! SideMenuCell
            
            cell.sidemenuImages.image = UIImage(named: "\(menuList[indexPath.section].list[indexPath.row].img!)")
            cell.lblmenuItem.text = menuList[indexPath.section].list[indexPath.row].text
            cell.switchbtn.isHidden = false
            return cell

        }
        else if  indexPath.row == 7 {
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "OthersSideCell", for: indexPath) as! OthersSideCell

         //   cell.switchbtn.isHidden = true
            cell.CollaspeBtn.tag = indexPath.row
            cell.CollaspeBtn.addTarget(self, action: #selector(connected(sender:)), for: .touchUpInside)
            cell.backgroundColor = UIColor.clear
           
            return cell

        }
       
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell", for: indexPath) as! SideMenuCell
            cell.sidemenuImages.image = UIImage(named: "\(menuList[indexPath.section].list[indexPath.row].img!)")
            cell.lblmenuItem.text = menuList[indexPath.section].list[indexPath.row].text
            cell.switchbtn.isHidden = true
            
           return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if indexPath.row == 2 {
            
            let vc = FollowingVC.instance(.main) as! FollowingVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if indexPath.row == 5 {
            
            let vc = ReviewsVC.instance(.main) as! ReviewsVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if indexPath.row == 4 {
            
            let vc = TransactionVC.instance(.homeTab) as! TransactionVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if indexPath.row == 0 {
            
            let vc = MyCarVC.instance(.main) as! MyCarVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if indexPath.row == 1 {
            
            let vc = NotificationVC.instance(.main) as! NotificationVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if indexPath.row == 3 {
            
            let vc = MemberShipPlanVC.instance(.main) as! MemberShipPlanVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if indexPath.row == 6 {
            
            let vc = ContactUsVC.instance(.main) as! ContactUsVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
       
        if  indexPath.row == 7 {
          
            if checkimgstr == "upArrow" {
                
            return   229

                
            }else {
                
              return   71
                
            }
        }
       else {
            
            return 71

            
        }
        
    }
    
    @objc func connected(sender: UIButton){
      //  let buttonTag = sender.tag
        
        let path = IndexPath(item: sender.tag, section: 0)

        let cell = sideMenu_tbl.cellForRow(at: path) as! OthersSideCell
       
//        previousIndex = sender.tag
//        print("get Index :\(previousIndex)")
//       
//        previousIndex = cell.CollaspeBtn.tag
//        print("get Collaspe Index :\(previousIndex)")

        if sender.currentImage == UIImage(named: "upArrow") {
            cell.CollaspeBtn.setImage(UIImage (named: "Down_Arow"), for: UIControl.State.normal)
            checkimgstr = "Down_Arow"

            height = 71
        }else {
            
            cell.CollaspeBtn.setImage(UIImage (named: "upArrow"), for: UIControl.State.normal)
                        checkimgstr = "upArrow"
                        height = 229
        }
        
        sideMenu_tbl.reloadData()
        
    }
}
