//
//  SurveyVC.swift
//  Carlot
//
//  Created by emizentech on 5/2/22.
//

import UIKit

class SurveyVC: UIViewController {
    
    @IBOutlet weak var Bg_view: UIView!
    @IBOutlet weak var BrandBtn: UIButton!
    @IBOutlet weak var ModelBtn: UIButton!
    @IBOutlet weak var KmsBtn: UIButton!
    @IBOutlet weak var OwnerBtn: UIButton!
    @IBOutlet weak var BudgetBtn: UIButton!
    @IBOutlet weak var SubmitBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        Bg_view.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        Bg_view.layer.cornerRadius = 30.0
        Bg_view.layer.borderWidth = 0.5
        
        BrandBtn.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        BrandBtn.layer.cornerRadius = 10.0
        BrandBtn.layer.borderWidth = 0.5
        BrandBtn.setTitle("Make Name", for: .normal)
        BrandBtn.setTitleColor(.lightGray, for: .normal)
        
        ModelBtn.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        ModelBtn.layer.cornerRadius = 10.0
        ModelBtn.layer.borderWidth = 0.5
        ModelBtn.setTitle("Model Number", for: .normal)
        ModelBtn.setTitleColor(.lightGray, for: .normal)
        
        KmsBtn.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        KmsBtn.layer.cornerRadius = 10.0
        KmsBtn.layer.borderWidth = 0.5
        KmsBtn.setTitle("Miles", for: .normal)
        KmsBtn.setTitleColor(.lightGray, for: .normal)
        
        OwnerBtn.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        OwnerBtn.layer.cornerRadius = 10.0
        OwnerBtn.layer.borderWidth = 0.5
        OwnerBtn.setTitle("Owner Type", for: .normal)
        OwnerBtn.setTitleColor(.lightGray, for: .normal)
        
        BudgetBtn.layer.borderColor = UIColor(red: 51, green: 51, blue: 51, alpha: 1).cgColor
        BudgetBtn.layer.cornerRadius = 10.0
        BudgetBtn.layer.borderWidth = 0.5
        BudgetBtn.setTitle("Budget", for: .normal)
        BudgetBtn.setTitleColor(.lightGray, for: .normal)
        
//        BrandBtn.attributedPlaceholder = NSAttributedString(
//            string: "Enter Your Name",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
//        )
//
//        txtName.attributedPlaceholder = NSAttributedString(
//            string: "Enter Your Name",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
//        )
//
//        txtName.attributedPlaceholder = NSAttributedString(
//            string: "Enter Your Name",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
//        )
//
//        txtName.attributedPlaceholder = NSAttributedString(
//            string: "Enter Your Name",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
//        )
//
//        txtName.attributedPlaceholder = NSAttributedString(
//            string: "Enter Your Name",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
//        )
//
//        txtName.attributedPlaceholder = NSAttributedString(
//            string: "Enter Your Name",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
//        )

        
    }
    

    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func SetValidationFiled(){
        
        if (BrandBtn.currentTitle?.isStringBlank())!{
            self.showCustomPopupView(altMsg:"Please enter brand name", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }
        else if (ModelBtn.currentTitle?.isStringBlank())!{
            self.showCustomPopupView(altMsg:"Please enter model number", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }
        else if (KmsBtn.currentTitle?.isStringBlank())!{
            self.showCustomPopupView(altMsg:"Please enter miles", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }
        else if (OwnerBtn.currentTitle?.isStringBlank())!{
            self.showCustomPopupView(altMsg:"Please enter owner type", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }
        else if (BudgetBtn.currentTitle?.isStringBlank())!{
            self.showCustomPopupView(altMsg:"Please enter budget", alerttitle: "Error!", alertimg: UIImage(named: "Errorimg") ?? UIImage()) {
                self.dismiss(animated: true, completion: nil)
            }
            return
        }else{
        
        let vc = ProfileVC.instance(.main) as! ProfileVC
        self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    @IBAction func btnSubmitClicked(_ sender: Any) {
        
        let vc = BaseTabVC.instance(.homeTab) as! BaseTabVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    

}
