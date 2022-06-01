//
//  ReviewsVC.swift
//  Carlot
//
//  Created by emizen on 5/9/22.
//

import UIKit

class ReviewsVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var ReviewsTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        ReviewsTable.layer.cornerRadius = 20
        ReviewsTable.layer.borderWidth = 0.3
        ReviewsTable.layer.borderColor = UIColor.white.cgColor

    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ReviewsTableViewCell
        cell.selectionStyle = .none

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
   
}
