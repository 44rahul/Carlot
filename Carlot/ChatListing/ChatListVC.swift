//
//  ChatListVC.swift
//  Carlot
//
//  Created by emizentech on 5/20/22.
//

import UIKit

class ChatListVC: UIViewController {

    @IBOutlet weak var chatList_tbl: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chatList_tbl.delegate = self
        chatList_tbl.dataSource = self
        
    }
    @IBAction func backBtnClicked(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
}

extension ChatListVC : UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatListCell", for: indexPath) as! ChatListCell
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
}
