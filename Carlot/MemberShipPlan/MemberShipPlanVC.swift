//
//  MemberShipPlanVC.swift
//  Carlot
//
//  Created by emizentech on 5/30/22.
//

import UIKit

class MemberShipPlanVC: UIViewController {
   // @IBOutlet weak var

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    

}
