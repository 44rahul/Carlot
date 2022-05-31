//
//  MyCarVC.swift
//  Carlot
//
//  Created by emizentech on 5/27/22.
//

import UIKit

class MyCarVC: UIViewController , UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var listingView: UIView!
    @IBOutlet weak var listingTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        listingView.layer.cornerRadius = 20
        listingView.layer.borderWidth = 0.3
        listingView.layer.borderColor = UIColor.white.cgColor
        

    }
    @IBAction func backBtnClicked(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCarsTableCell") as! MyCarsTableCell
     
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 138
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}
