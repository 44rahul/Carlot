//
//  ForgotEmailVC.swift
//  Carlot
//
//  Created by emizen on 4/29/22.
//

import UIKit

class ForgotEmailVC: UIViewController {

    @IBOutlet weak var alertDetailView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var EmailTxt: UITextField!
    @IBOutlet weak var MainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MainView.layer.borderColor = UIColor.white.cgColor
        MainView.layer.borderWidth = 0.5
        MainView.layer.cornerRadius = 31
        
        alertDetailView.layer.borderColor = UIColor.white.cgColor
        alertDetailView.layer.borderWidth = 0.5
        alertDetailView.layer.cornerRadius = 20
        
        EmailTxt.layer.borderColor = UIColor.white.cgColor
        EmailTxt.layer.borderWidth = 0.5
        EmailTxt.layer.cornerRadius = 10
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        alertView.addGestureRecognizer(tap)
        
        alertView.isHidden = true
        
        EmailTxt.attributedPlaceholder = NSAttributedString(
            string: "Enter Email id",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )

    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        alertView.isHidden = true
    }
    
    @IBAction func DoneBtnClicked(_ sender: Any) {
        
        let vc = OTPVerificationVC.instance(.Authentication) as! OTPVerificationVC
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    @IBAction func nextBtn(_ sender: Any) {
        
        if (EmailTxt.text?.isStringBlank())!{
            self.showCustomPopupView(altMsg:"Please enter email address", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }else if !validEmailId(inputText: EmailTxt.text!){
            self.showCustomPopupView(altMsg:"Please enter valid email address", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }
        else
        {
        alertView.isHidden = false
        setView(view: alertView, hidden: false)
        }
    }
    
    func setView(view: UIView, hidden: Bool) {
        UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve, animations: {
            view.isHidden = hidden
        })
    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func validEmailId(inputText: String)-> Bool {
        print("validate emilId: \(inputText)")
        let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: inputText)
        return result
    }
}
