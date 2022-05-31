//
//  ContactUsVC.swift
//  Carlot
//
//  Created by emizentech on 5/18/22.
//

import UIKit

class ContactUsVC: UIViewController {

    @IBOutlet weak var txt_UserEmail: UITextField!
    
    @IBOutlet weak var txt_UserMobile: UITextField!
    
    
    @IBOutlet weak var txt_Name: UITextField!
    @IBOutlet weak var txt_Email: UITextField!
    @IBOutlet weak var txt_Mobile: UITextField!
    
    @IBOutlet weak var txt_messageDetails: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        SetTextField()
    }
    @IBAction func ContactBtnClicked(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func SetTextField(){
        txt_Name.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txt_Email.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        txt_Mobile.attributedPlaceholder = NSAttributedString(
            string: "Enter Your Number",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
    }

}
