//
//  addAddressVC.swift
//  Carlot
//
//  Created by emizen on 5/11/22.
//

import UIKit

class addAddressVC: UIViewController {

    @IBOutlet weak var addresslineTxt: UITextField!
    
    @IBOutlet weak var DeliveryTimeTxt: UITextField!
    @IBOutlet weak var PhoneTxt: UITextField!
    @IBOutlet weak var zipcodeTxt: UITextField!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var stateTxt: UITextField!
    @IBOutlet weak var landmarkTxt: UITextField!
    @IBOutlet weak var addressline2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        SetTextField()

    }
    
    func SetTextField() {
        
//        addresslineTxt.attributedPlaceholder = NSAttributedString(
//            string: "Enter Address Line 1",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        )
//        addressline2.attributedPlaceholder = NSAttributedString(
//            string: "Enter Address Line 2",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        )
//        landmarkTxt.attributedPlaceholder = NSAttributedString(
//            string: "Enter Landmark",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        )
//        stateTxt.attributedPlaceholder = NSAttributedString(
//            string: "Enter State Name",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        )
//        cityTxt.attributedPlaceholder = NSAttributedString(
//            string: "Enter City Name",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        )
//        zipcodeTxt.attributedPlaceholder = NSAttributedString(
//            string: "Enter Zip Code",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        )
//        PhoneTxt.attributedPlaceholder = NSAttributedString(
//            string: "Enter your Number",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        )
//        DeliveryTimeTxt.attributedPlaceholder = NSAttributedString(
//            string: "Select Date",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        )
//
   }
//
//

}
