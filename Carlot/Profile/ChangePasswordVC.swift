//
//  ChangePasswordVC.swift
//  Carlot
//
//  Created by emizentech on 5/6/22.
//

import UIKit

class ChangePasswordVC: UIViewController {

    @IBOutlet weak var Bg_view: UIView!
    @IBOutlet weak var txtCurrentPassword : UITextField!
    @IBOutlet weak var txtNewPassword : UITextField!
    @IBOutlet weak var txtConfirmPassword : UITextField!
    
    @IBOutlet weak var confirmPassBtn: UIButton!
    @IBOutlet weak var currentPassBtn: UIButton!
    @IBOutlet weak var NewPassBtn: UIButton!
    
    var IsConditionChecked: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        Bg_view.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        Bg_view.layer.cornerRadius = 30.0
        Bg_view.layer.borderWidth = 0.5
        
        txtCurrentPassword.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtCurrentPassword.layer.cornerRadius = 10.0
        txtCurrentPassword.layer.borderWidth = 0.5
        
        txtNewPassword.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtNewPassword.layer.cornerRadius = 10.0
        txtNewPassword.layer.borderWidth = 0.5
        
        txtConfirmPassword.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtConfirmPassword.layer.cornerRadius = 10.0
        txtConfirmPassword.layer.borderWidth = 0.5
        
        txtCurrentPassword.attributedPlaceholder = NSAttributedString(
            string: "Current Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txtNewPassword.attributedPlaceholder = NSAttributedString(
            string: "New Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txtConfirmPassword.attributedPlaceholder = NSAttributedString(
            string: "Confirm New Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
    }
    @IBAction func backBtnClciked(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func DoneBtnClicked(_ sender: Any) {
        
        let vc = BaseTabVC.instance(.homeTab) as! BaseTabVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func btnCurrentPwdClicked(_ sender: UIButton) {
        
        if IsConditionChecked{
            txtCurrentPassword.isSecureTextEntry = false
            IsConditionChecked = false

            currentPassBtn.setImage(UIImage (named: "secure_txt"), for: .normal)

        }else{
            txtCurrentPassword.isSecureTextEntry = true
            IsConditionChecked = true
            currentPassBtn.setImage(UIImage(named: "hidePass"), for: .normal)

        }
    }
    
    @IBAction func btnNewPwdClicked(_ sender: UIButton) {
        if IsConditionChecked{
            txtNewPassword.isSecureTextEntry = false
            IsConditionChecked = false
            NewPassBtn.setImage(UIImage (named: "secure_txt"), for: .normal)

        }else{
            txtNewPassword.isSecureTextEntry = true
            IsConditionChecked = true
            NewPassBtn.setImage(UIImage(named: "hidePass"), for: .normal)

        }
    }
    
    @IBAction func btnConfirmPwdClicked(_ sender: UIButton) {
        if IsConditionChecked{
            txtConfirmPassword.isSecureTextEntry = false
            IsConditionChecked = false
            confirmPassBtn.setImage(UIImage (named: "secure_txt"), for: .normal)

        }else{
            txtConfirmPassword.isSecureTextEntry = true
            IsConditionChecked = true
            confirmPassBtn.setImage(UIImage(named: "hidePass"), for: .normal)

        }
    }
}
