//
//  DetailVC.swift
//  Carlot
//
//  Created by emizen on 5/9/22.
//

import UIKit

class DetailVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var makeAnOfferView: UIView!
    @IBOutlet weak var DetailTable: UITableView!
    @IBOutlet weak var DetailView: UIView!
    @IBOutlet weak var purchaseBtn: UIButton!
    @IBOutlet weak var ChatBtn: UIButton!
    @IBOutlet weak var followBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  purchaseBtn.layer.cornerRadius = 10
        ChatBtn.layer.cornerRadius = 10
        followBtn.layer.cornerRadius = 10
        DetailView.layer.cornerRadius = 10
        makeAnOfferView.isHidden = true
        
        profilePic.layer.cornerRadius = profilePic.frame.size.height/2
        
    }
    
    @IBAction func backBtnClicked(_ sender: Any) {
        
        makeAnOfferView.isHidden = true

    }
    
    @IBAction func shareBtnClicked(_ sender: Any) {
        
        let text = "This is the text....."
        let textShare = [ text ]
        let activityViewController = UIActivityViewController(activityItems: textShare , applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
        
    }
        
        
    @IBAction func sendBtnClicked(_ sender: Any) {
        
        makeAnOfferView.isHidden = true

    }
    
    
    
    @IBAction func ratingBtnClicked(_ sender: Any) {
        
        let vc = ReviewsVC.instance(.main) as! ReviewsVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func makeOfferBtnClicked(_ sender: Any) {
        
        makeAnOfferView.isHidden = false

    }
    
    @IBAction func BuyNowBuutonclicked(_ sender: Any) {
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
