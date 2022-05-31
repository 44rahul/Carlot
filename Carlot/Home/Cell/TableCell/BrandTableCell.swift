//
//  BrandTableCell.swift
//  Carlot
//
//  Created by emizen on 5/3/22.
//

import UIKit

class BrandTableCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    
    var CatNavigation : UINavigationController?

    @IBOutlet weak var BrandCollection: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        BrandCollection.delegate = self
        BrandCollection.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
       
        
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return 3
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BrandCollectioncell
        
        cell.layer.cornerRadius  =  15
        
        if indexPath.row == 0 {
            
            cell.brandAllLbl.isHidden = false
            cell.BrandImg.isHidden = true
            cell.backgroundColor = UIColor().HexToColor(hexString: "F4BC33");


        }else {
            
            cell.brandAllLbl.isHidden = true
            cell.BrandImg.isHidden = false
            cell.BrandImg.image = UIImage(named: "Ford")
            cell.backgroundColor = UIColor.lightGray
        }
       
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {

            let vc = ProductCategoryVC.instance(.main) as! ProductCategoryVC
            CatNavigation?.pushViewController(vc, animated: true)
//            let storyBoard = UIStoryboard(name: "Home", bundle: nil)
//                    if let detailVC = storyBoard.instantiateViewController(withIdentifier: "DetailVC") as?  {
//                        self.navigationController?.pushViewController(detailVC, animated: true)
//                    }
//            let vc = EditProfileVC.instance(.main) as! EditProfileVC
//            CatNavigation.pushViewController(vc, animated: true)
        }else {
//
            let vc = ListingVC.instance(.main) as! ListingVC
            CatNavigation?.pushViewController(vc, animated: true)
        }
    
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
  
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
      //  let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        // pageControl.currentPage = Int(pageIndex)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width:75, height:75);
        
    }

}
