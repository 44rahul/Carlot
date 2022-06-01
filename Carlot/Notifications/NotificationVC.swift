//
//  NotificationVC.swift
//  Carlot
//
//  Created by emizentech on 5/18/22.
//

import UIKit

class NotificationVC: UIViewController {

    
    @IBOutlet weak var notification_tbl : UITableView!
    
    var ArrNotification :[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ArrNotification = ["First","Second","Third","Fourth","Fifth","Six","Seven","Eight","Nine","Zero"]

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
}

extension NotificationVC : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrNotification.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as! NotificationCell
        cell.lbl_update.text = ArrNotification[indexPath.row]
        cell.selectionStyle = .none

        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
        
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.ArrNotification.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            self.notification_tbl.reloadData()
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
            self.ArrNotification.insert("Eleven", at: indexPath.row)
            self.notification_tbl.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
         return true
    }
    
}
