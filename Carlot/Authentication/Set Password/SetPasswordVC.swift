//
//  SetPasswordVC.swift
//  Carlot
//
//  Created by emizentech on 5/2/22.
//

import UIKit

class SetPasswordVC: UIViewController {

    @IBOutlet weak var Bg_view: UIView!
    @IBOutlet weak var txt_password : UITextField!
    @IBOutlet weak var txt_confirmPassword : UITextField!
    @IBOutlet weak var SaveBtn : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        Bg_view.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        Bg_view.layer.cornerRadius = 30.0
        Bg_view.layer.borderWidth = 0.5
        
        txt_password.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txt_password.layer.cornerRadius = 10.0
        txt_password.layer.borderWidth = 0.5
        
        txt_confirmPassword.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txt_confirmPassword.layer.cornerRadius = 10.0
        txt_confirmPassword.layer.borderWidth = 0.5
        
        SetTextField()
    }
    
    func SetTextField(){
        txt_password.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txt_confirmPassword.attributedPlaceholder = NSAttributedString(
            string: "Re enter Your Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
    }
    
    @IBAction func backbuttonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func SetValidationFiled()
    {
        if(txt_password.text?.isStringBlank())!{
           self.showCustomPopupView(altMsg:"Please enter password", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }else if txt_password.text?.trimmingCharacters(in: .whitespaces).count ?? 0 < 6{
           self.showCustomPopupView(altMsg:"Password should have minimun 6 digit", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }
        else if(txt_confirmPassword.text?.isStringBlank())! {
           self.showCustomPopupView(altMsg:"Please enter confirm password", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }else if txt_password.text != txt_confirmPassword.text {
           
           self.showCustomPopupView(altMsg:"Password doesn't match", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
           
        }else{
        let vc = FollowingVC.instance(.main) as! FollowingVC
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func btnSaveClicked(_ sender: UIButton) {
       
        
    }
    
}
