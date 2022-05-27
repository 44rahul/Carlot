//
//  OTPVerificationVC.swift
//  Carlot
//
//  Created by emizentech on 5/2/22.
//

import UIKit
//import SROTPView


class OTPVerificationVC: UIViewController {
    @IBOutlet weak var Bg_view: UIView!
    @IBOutlet weak var firstBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    @IBOutlet weak var thirdBtn: UIButton!
    @IBOutlet weak var fourthBtn: UIButton!
    @IBOutlet weak var verifyBtn: UIButton!
    @IBOutlet weak var pinCodeView : SROTPView!
    
    var otppin:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        Bg_view.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        Bg_view.layer.cornerRadius = 30.0
        Bg_view.layer.borderWidth = 0.5
        
        pinCodeView.otpTextFieldsCount  = 4
        pinCodeView.otpTextFieldFontColor = .white
        pinCodeView.size = (self.view.frame.width-130)/4
        pinCodeView.space = 20
        
        pinCodeView.otpTextFieldActiveBorderColor = UIColor.gray
        pinCodeView.otpTextFieldDefaultBorderColor = UIColor.gray
              
        pinCodeView.activeHeight = 2
        pinCodeView.inactiveHeight = 2
        pinCodeView.otpType = .Bordered
        pinCodeView.textBackgroundColor = .clear
        pinCodeView.layer.cornerRadius = 20.0
//      pinCodeView.layer.borderWidth = 0.5
//      pinCodeView.layer.borderColor = UIColor.white.cgColor
        
        pinCodeView.becomeFirstResponder()
        //pinCodeView.tintColor = .black
        pinCodeView.otpEnteredString = { pin in
            print("The entered pin is \(pin)")
            
            if pin.count == 4 {
                self.otppin=pin
            }
        }
        
        pinCodeView.setUpOtpView()
    }
    
    @IBAction func backbuttonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidAppear(_ animated: Bool) {
        for txt in  pinCodeView.textFieldsCollection{
            txt.layer.cornerRadius=10
        }
    }
 
    @IBAction func btnVerifyClicked(_ sender: UIButton) {
        let vc = SetPasswordVC.instance(.Authentication) as! SetPasswordVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
