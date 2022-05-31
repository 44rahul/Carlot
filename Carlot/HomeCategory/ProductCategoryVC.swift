//
//  ProductCategoryVC.swift
//  Carlot
//
//  Created by emizentech on 5/27/22.
//

import UIKit

class ProductCategoryVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var productBrandCollection : UICollectionView!
    
    var logoImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImages += [UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!,UIImage(named: "Ford")!, UIImage(named: "kia")! , UIImage(named: "Nissan")! , UIImage(named: "skoda")!]
      
        
        productBrandCollection.delegate = self
        productBrandCollection.dataSource = self
        
    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    // collection view delegates
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return logoImages.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductBrandCollectionCell
        
        cell.layer.cornerRadius  =  15
        
        cell.brandimg.image = logoImages[indexPath.row]
       
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        
        let vc = ListingVC.instance(.main) as! ListingVC
        navigationController?.pushViewController(vc, animated: true)
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
        
        
        return CGSize(width:85, height:85);
        
    }
}
