//
//  LoginVC.swift
//  Carlot
//
//  Created by emizentech on 4/29/22.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var Bg_view: UIView!
    
    @IBOutlet weak var txtEmailMobile : UITextField!
    @IBOutlet weak var txtPassword : UITextField!
    @IBOutlet weak var btn_secure : UIButton!
    @IBOutlet weak var btn_forgot : UIButton!
    @IBOutlet weak var btn_submit : UIButton!
    @IBOutlet weak var btn_facebook : UIButton!
    @IBOutlet weak var btn_gmail : UIButton!
    @IBOutlet weak var btn_signup : UIButton!
    
    @IBOutlet weak var passBtn: UIButton!
    var conditionIsChecked : Bool =  true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        Bg_view.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        Bg_view.layer.cornerRadius = 30.0
        Bg_view.layer.borderWidth = 0.5
        //Bg_view.layer.
        txtEmailMobile.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtEmailMobile.layer.cornerRadius = 10.0
        txtEmailMobile.layer.borderWidth = 0.5
        
        txtPassword.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        txtPassword.layer.cornerRadius = 10.0
        txtPassword.layer.borderWidth = 0.5
        
        SetTextField()
        
    }
    
    func SetTextField(){
        txtEmailMobile.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txtPassword.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
    }
    
    @IBAction func btnForgotCliked(_ sender: UIButton) {
        let vc = ForgotEmailVC.instance(.main) as! ForgotEmailVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func SetValidationFiled(){
       
        if (txtEmailMobile.text?.isStringBlank())!{
            self.showCustomPopupView(altMsg:"Please enter email address", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }
        else if !validEmailId(inputText: txtEmailMobile.text!){
            self.showCustomPopupView(altMsg:"Please enter valid email address", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }
        if (txtPassword.text?.isStringBlank())!{
            self.showCustomPopupView(altMsg:"Please enter password", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }
        else if txtPassword.text?.trimmingCharacters(in: .whitespaces).count ?? 0 < 6 {
           self.showCustomPopupView(altMsg:"Mobile number should have minimun 6 digit", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
           self.dismiss(animated: true, completion: nil)
          }
           return
        }else{
            
            let vc = BaseTabVC.instance(.homeTab) as! BaseTabVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func btnSubmitClicked(_ sender: UIButton) {
        
        SetValidationFiled()
    }
    
    @IBAction func btnSignupClicked(_ sender: UIButton) {
        let vc = SignUpVC.instance(.Authentication) as! SignUpVC
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    @IBAction func btnSecureText(_ sender: UIButton) {
//        if conditionIsChecked{
//        txtPassword.isSecureTextEntry = false
//            conditionIsChecked = false
//        }else{
//            txtPassword.isSecureTextEntry = true
//            conditionIsChecked = true
//        }
        
        if conditionIsChecked{
            txtPassword.isSecureTextEntry = false
            conditionIsChecked = false

            passBtn.setImage(UIImage (named: "secure_txt"), for: .normal)

        }else{
            txtPassword.isSecureTextEntry = true
            conditionIsChecked = true
            passBtn.setImage(UIImage(named: "hidePass"), for: .normal)

        }
    }
    
    @IBAction func btnFbLoginClicked(_ sender: UIButton) {
    }
    
    @IBAction func btnGmailLoginClicked(_ sender: UIButton) {
    }
    
    func validEmailId(inputText: String)-> Bool {
        print("validate emilId: \(inputText)")
        let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: inputText)
        return result
    }
    
}
