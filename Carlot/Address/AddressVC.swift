//
//  AddressVC.swift
//  Carlot
//
//  Created by emizen on 5/11/22.
//

import UIKit

class AddressVC: UIViewController {

    @IBOutlet weak var ContinueBtn: UIButton!
    @IBOutlet weak var Address2ndView: UIView!
    @IBOutlet weak var address1stView: UIView!
    @IBOutlet weak var addressMainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addressMainView.layer.cornerRadius = 20
        addressMainView.layer.borderWidth = 0.3
        addressMainView.layer.borderColor = UIColor.white.cgColor
        
        address1stView.layer.cornerRadius = 10
        address1stView.layer.borderWidth = 0.3
        address1stView.layer.borderColor = UIColor.gray.cgColor
        
        Address2ndView.layer.cornerRadius = 10
        Address2ndView.layer.borderWidth = 0.3
        Address2ndView.layer.borderColor = UIColor.gray.cgColor
        
        ContinueBtn.layer.cornerRadius = 10
        
        

    }
    
    @IBAction func backBtnClicked(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func AddressBtnClicked(_ sender: Any) {
        
        let vc = addAddressVC.instance(.main) as! addAddressVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
  
}

