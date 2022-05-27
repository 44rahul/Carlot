//
//  ProfileVC.swift
//  Carlot
//
//  Created by emizentech on 5/11/22.
//

import UIKit

class ProfileVC: UIViewController {
    
    @IBOutlet weak var profileList_tbl : UITableView!
    @IBOutlet weak var lblUserName : UILabel!
    @IBOutlet weak var lblEmailAddress : UILabel!
    @IBOutlet weak var btnEdit : UIButton!
    
    var ArrProfileInfo = [String]()
    var ArrProfileData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ArrProfileInfo = ["Name", "Email", "Mobile number", "Password", "National Identity","License Number","Card tax Registration Number","Address"]
        ArrProfileData = ["Robert Fox", "robertfox@gmail.com" ,"+1650-723-2300", "1234567890", "Indian", "NT-79043/GZB 11/8/22" , "NH-509021/GZB /200950 ", "C/102, Via Giuseppe Orlandi, C 80071 Anac apri NA, Orlandi India"]

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backbuttonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func OpenEditProfile(_ sender: Any) {
        let vc = EditProfileVC.instance(.main) as! EditProfileVC
        vc.ArrEditInfo = self.ArrProfileData
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension ProfileVC : UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrProfileInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
        
        cell.lblName.text = ArrProfileInfo[indexPath.row]
        //cell.lblAddres.text = ArrProfileData[indexPath.row]
        cell.txt_address.text = ArrProfileData[indexPath.row]
        cell.txt_address.isUserInteractionEnabled = false
        
        if indexPath.row == 3{
            cell.txt_address.isSecureTextEntry = true
        }
        
        return cell
    }
    
    
    
}
