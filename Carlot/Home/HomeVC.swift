//
//  HomeVC.swift
//  Carlot
//
//  Created by emizen on 5/3/22.
//

import UIKit

class HomeVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var homeTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
       // homeTable.contentInset = UIEdgeInsets(top: -self.view.safeAreaInsets.top, left: 0, bottom: 0, right:  0)
    }
    
    @IBAction func notificationBtnClicked(_ sender: Any) {
        
        let vc = NotificationVC.instance(.main) as! NotificationVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func SearchBtnClciked(_ sender: Any) {
        
        let vc = SearchVC.instance(.main) as! SearchVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func SideMenuBtnClicked(_ sender: Any) {
        
        let vc = SideMenuVC.instance(.main) as! SideMenuVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
      return 3
        
        
    }
    
    @IBAction func seeAllBtnClicked(_ sender: Any) {
        
        let vc = ListingVC.instance(.main) as! ListingVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! BannerTableCell
            
            cell.bannerImgView.image = UIImage(named: "BannerTest")
            cell.selectionStyle = .none

            return cell
            
        }else if indexPath.row == 1 {
            
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "Cell2") as! BrandTableCell
            cell1.CatNavigation = self.navigationController
            cell1.selectionStyle = .none

            return cell1
            
        }else
        {
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell3") as! CategoryTableCell
            
            cell2.layer.borderWidth = 0.5
            cell2.layer.borderColor = UIColor.gray.cgColor
            cell2.layer.cornerRadius = 20
            
            cell2.HomeNavigation = self.navigationController
            return cell2
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
       
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }

}

extension UIColor{
    func HexToColor(hexString: String, alpha:CGFloat? = 1.0) -> UIColor {
        // Convert hex string to an integer
        let hexint = Int(self.intFromHexString(hexStr: hexString))
        let red = CGFloat((hexint & 0xff0000) >> 16) / 255.0
        let green = CGFloat((hexint & 0xff00) >> 8) / 255.0
        let blue = CGFloat((hexint & 0xff) >> 0) / 255.0
        let alpha = alpha!
        // Create color object, specifying alpha as well
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        return color
    }
    
    
    
    
    func intFromHexString(hexStr: String) -> UInt32 {
        var hexInt: UInt32 = 0
        // Create scanner
        let scanner: Scanner = Scanner(string: hexStr)
        // Tell scanner to skip the # character
        scanner.charactersToBeSkipped = NSCharacterSet(charactersIn: "#") as CharacterSet
        // Scan hex value
        scanner.scanHexInt32(&hexInt)
        return hexInt
    }
}
