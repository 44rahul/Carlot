//
//  EditProfileVC.swift
//  Carlot
//
//  Created by emizentech on 5/11/22.
//

import UIKit

class EditProfileVC: UIViewController {
    
    @IBOutlet weak var Editprofile_tbl : UITableView!
    @IBOutlet weak var lblUserName : UILabel!
    @IBOutlet weak var lblEmailAddress : UILabel!
    
    @IBOutlet weak var save_btn : UIButton!
    
    
    var ArrProfileInfo = [String]()
    var ArrEditInfo = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ArrProfileInfo = ["Name", "Email", "Mobile number", "Password","National Identity","License Number","Card tax Registration Number","Address"]
        
        print("Array Data:",self.ArrEditInfo)

        // Do any additional setup after loading the view.
    }
    @IBAction func backbuttonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func saveButtonPressed(_ sender: UIButton) {
//        let vc = SideMenuVC.instance(.main) as! SideMenuVC
//        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension EditProfileVC : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ArrEditInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "EditProfileCell", for: indexPath) as! EditProfileCell
        
        cell.lblName.text = ArrProfileInfo[indexPath.row]
        if indexPath.row == 1
        {
            cell.txtEditInfo.isUserInteractionEnabled = false
            //cell.txtEditInfo.textColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1)
            cell.txtEditInfo.textColor = UIColor.darkGray
        }
        else
        {
            cell.txtEditInfo.isUserInteractionEnabled = true
            //cell.txtEditInfo.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        }
        if indexPath.row == 3{
            cell.txtEditInfo.isSecureTextEntry = true
            cell.change_btn.isHidden = false
            
        }
        else{
            cell.txtEditInfo.isSecureTextEntry = false
            cell.change_btn.isHidden = true
        }
        
        
        cell.txtEditInfo.text = self.ArrEditInfo[indexPath.row]
        //cell.save_btn.addTarget(self, action: #selector(selected(sender:)), for: .touchUpInside)
        cell.change_btn.addTarget(self, action: #selector(selected(sender:)), for: .touchUpInside)
        return cell
    }
    
//    @IBAction func SaveBtnClicked  (UIButton){
//
//    }
//    
     @objc func selected(sender: AnyObject) {
            //...
         let vc = ChangePasswordVC.instance(.main) as! ChangePasswordVC
         self.navigationController?.pushViewController(vc, animated: true)

        }
}
