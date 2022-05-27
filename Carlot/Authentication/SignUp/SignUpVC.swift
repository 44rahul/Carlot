//
//  SignUpVC.swift
//  Carlot
//
//  Created by emizentech on 4/29/22.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var Bg_view: UIView!
    @IBOutlet weak var view_Mobile: UIView!
    @IBOutlet weak var txtName : UITextField!
    @IBOutlet weak var txtEmail : UITextField!
    @IBOutlet weak var txtMobile : UITextField!
    @IBOutlet weak var txtConfirmPwd : UITextField!
    @IBOutlet weak var txtPassword : UITextField!
    @IBOutlet weak var btn_secure : UIButton!
    @IBOutlet weak var btn_forgot : UIButton!
    @IBOutlet weak var btn_submit : UIButton!
    @IBOutlet weak var btn_facebook : UIButton!
    @IBOutlet weak var btn_gmail : UIButton!
    @IBOutlet weak var btn_signup : UIButton!
    
    
    @IBOutlet weak var txtIdentity : UITextField!
    @IBOutlet weak var txtLicenseNo : UITextField!
    @IBOutlet weak var txtCardRegNo : UITextField!
    
    var conditionIsChecked : Bool =  true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        Bg_view.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        Bg_view.layer.cornerRadius = 30.0
        Bg_view.layer.borderWidth = 0.5
        
        view_Mobile.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        view_Mobile.layer.cornerRadius = 10.0
        view_Mobile.layer.borderWidth = 0.5
        
        txtName.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtName.layer.cornerRadius = 10.0
        txtName.layer.borderWidth = 0.5
        
        txtEmail.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtEmail.layer.cornerRadius = 10.0
        txtEmail.layer.borderWidth = 0.5
        
        txtIdentity.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtIdentity.layer.cornerRadius = 10.0
        txtIdentity.layer.borderWidth = 0.5
        
        txtLicenseNo.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtLicenseNo.layer.cornerRadius = 10.0
        txtLicenseNo.layer.borderWidth = 0.5
        
        txtCardRegNo.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtCardRegNo.layer.cornerRadius = 10.0
        txtCardRegNo.layer.borderWidth = 0.5
        
//        txtMobile.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
//        txtMobile.layer.cornerRadius = 10.0
//        txtMobile.layer.borderWidth = 0.5
        
        txtPassword.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtPassword.layer.cornerRadius = 10.0
        txtPassword.layer.borderWidth = 0.5
        
        txtConfirmPwd.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtConfirmPwd.layer.cornerRadius = 10.0
        txtConfirmPwd.layer.borderWidth = 0.5
        
        SetTextField()

    }
    
    func SetTextField(){
        
        txtName.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txtEmail.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txtMobile.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Number",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txtIdentity.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Identity",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txtLicenseNo.attributedPlaceholder = NSAttributedString(
            string: "License Number",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txtCardRegNo.attributedPlaceholder = NSAttributedString(
            string: "Registration Number",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        txtPassword.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txtConfirmPwd.attributedPlaceholder = NSAttributedString(
            string: "Confirm Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
    }
    
    @IBAction func MoveToLoginView(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func SecurePasswordText(_ sender: Any) {
        if conditionIsChecked {
        txtPassword.isSecureTextEntry = false
            conditionIsChecked = false
        }else{
            txtPassword.isSecureTextEntry = true
            conditionIsChecked = true
        }
    }
    
    @IBAction func SecureConfirmPasswordText(_ sender: Any) {
        if conditionIsChecked {
            txtConfirmPwd.isSecureTextEntry = false
            conditionIsChecked = false
        }else{
            txtConfirmPwd.isSecureTextEntry = true
            conditionIsChecked = true
        }
    }
    
    func SetValidationFiled(){
        
        if (txtName.text?.isStringBlank())! {
        self.showCustomPopupView(altMsg:"Please enter name", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
        self.dismiss(animated: true, completion: nil)
       }
           return
        }else if(txtEmail.text?.isStringBlank())! {
           self.showCustomPopupView(altMsg:"Please enter email address", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }else if !validEmailId(inputText: txtEmail.text!)  {
           print("Not Valid Emaild")
           self.showCustomPopupView(altMsg:"Please enter valid email address", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
       }
           return
       }

        else if(txtMobile.text?.isStringBlank())! {
           self.showCustomPopupView(altMsg:"Please enter mobile number", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }else if txtMobile.text?.trimmingCharacters(in: .whitespaces).count ?? 0 < 6 {
           self.showCustomPopupView(altMsg:"Mobile number should have minimun 6 digit", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }
        else if(txtPassword.text?.isStringBlank())!{
           self.showCustomPopupView(altMsg:"Please enter password", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }else if txtPassword.text?.trimmingCharacters(in: .whitespaces).count ?? 0 < 6{
           self.showCustomPopupView(altMsg:"Password should have minimun 6 digit", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }
        else if(txtConfirmPwd.text?.isStringBlank())! {
           self.showCustomPopupView(altMsg:"Please enter confirm password", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }
        else if txtPassword.text != txtConfirmPwd.text {

           self.showCustomPopupView(altMsg:"Password doesn't match", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }
        else{

            let vc = SurveyVC.instance(.Authentication) as! SurveyVC
            self.navigationController?.pushViewController(vc, animated: true)
       }
    }
    
    @IBAction func btnSubmitClicked(_ sender: UIButton){
        
        
        
        let vc = SurveyVC.instance(.Authentication) as! SurveyVC
        self.navigationController?.pushViewController(vc, animated: true)
}
    
    func validEmailId(inputText: String)-> Bool {
        print("validate emilId: \(inputText)")
        let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: inputText)
        return result
    }
    
}
