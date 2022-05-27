//
//  DetailVC.swift
//  Carlot
//
//  Created by emizen on 5/9/22.
//

import UIKit

class DetailVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var DetailTable: UITableView!
    @IBOutlet weak var DetailView: UIView!
    @IBOutlet weak var purchaseBtn: UIButton!
    @IBOutlet weak var ChatBtn: UIButton!
    @IBOutlet weak var followBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        purchaseBtn.layer.cornerRadius = 10
        ChatBtn.layer.cornerRadius = 10
        followBtn.layer.cornerRadius = 10
        DetailView.layer.cornerRadius = 10
        
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        DetailTable.contentInset = UIEdgeInsets(top: -self.view.safeAreaInsets.top, left: 0, bottom: 0, right:  0)
    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ProductTableCell
        //   cell.searchSugglbl.text = SearchSuggestionArr[indexPath.row]
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    
    
}
