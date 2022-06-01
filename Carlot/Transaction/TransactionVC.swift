//
//  TransactionVC.swift
//  Carlot
//
//  Created by emizentech on 5/25/22.
//

import UIKit

class TransactionVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var transaction_Table : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ibactionBtnClicked(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell") as! TransactionCell
        //   cell.searchSugglbl.text = SearchSuggestionArr[indexPath.row]
        
        cell.ratnow.addTarget(self, action: #selector(connected(sender:)), for: .touchUpInside)
        cell.ratnow.tag = indexPath.row

        cell.selectionStyle = .none
        
        return cell
        
        
    }
    
    @objc func connected(sender: UIButton){
      //  let buttonTag = sender.tag
        let vc = Rate_ReviewVC.instance(.main) as! Rate_ReviewVC
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}
