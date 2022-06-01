//
//  AddPostVC.swift
//  Carlot
//
//  Created by emizen on 5/19/22.
//

import UIKit

class AddPostVC: UIViewController{

    @IBOutlet weak var PostCollection: UICollectionView!
    var imageArr = [[String:Any]]()
    var ArrDataSend:[String] = []
  //  var ArrGallery=[GetGallery]()

    override func viewDidLoad() {
        super.viewDidLoad()
        PostCollection.isHidden=true
        PostCollection.delegate = self
        PostCollection.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addPhotosBtnClicked(_ sender: Any) {
        
        OpenGalleyOrCameraAction()
        
    }
    
    @IBAction func AddAddressBtnClicked(_ sender: Any) {
        
        let vc = addAddressVC.instance(.main) as! addAddressVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func submitBtnClicked(_ sender: Any) {
        
        let vc = MemberShipPlanVC.instance(.main) as! MemberShipPlanVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func OpenGalleyOrCameraAction()
    {
        obj.imagePick(objVC: self)
        
        obj.callback =  { img,ImgUrl in
//            self.selectedStoryType = "0"
//            self.UpdateImage=img as! UIImage
//
//
//            let imgT = ThumbNail.getThumbnailfromImage(imageT: img as? UIImage ?? UIImage())
//            let di = ["type":"image","img":img,"videoUrl":NSURL(),"imgThumb":imgT ?? UIImage()]
//            self.UploadImage = img as! UIImage
//
//
//            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
//                self.imageArr.append(di)
//                self.ImageAndVideoUplaodApi()
//
            }
            
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AddPostVC: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        if boolValue == true {
//            if self.ArrGallery.count == 0 && self.imageArr.count == 0 {
//                self.Lblpricetopconstarint.constant = 20
//                collectionViewPost.isHidden=true
//            }else{
//
//                self.Lblpricetopconstarint.constant = 98
//                collectionViewPost.isHidden=false
//                self.view.layoutIfNeeded()
//            }
//            return ArrGallery.count + imageArr.count
//        }else{
//            if self.imageArr.count == 0{
//                self.Lblpricetopconstarint.constant = 20
//                collectionViewPost.isHidden=true
//            }else{
//                self.Lblpricetopconstarint.constant = 98
//                collectionViewPost.isHidden=false
//            }
            return  imageArr.count
     //   }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddPostCollectionViewCell", for: indexPath) as! AddPostCollectionViewCell
//
//        if boolValue == true {
//            if ArrGallery.count > indexPath.row {
//                if ArrGallery[indexPath.row].fileType == "0" {
//                    let url = URL(string:ArrGallery[0].url ?? "")
//                    if let thumbnailImage = ThumbNail.getThumbnailFromFile(url!) {
//                        cell.img.image = thumbnailImage
//                    }
//
//                } else{
//                    cell.img.sd_imageIndicator = SDWebImageActivityIndicator.gray
//                    cell.img.sd_setImage(with: URL(string:ArrGallery[indexPath.row].url ?? ""), placeholderImage: UIImage(named: ""))
//                }
//            }else{
//                let count = imageArr.count+ArrGallery.count-indexPath.row-1
//                let d = imageArr[count]["img"]
//                if let image = d {
//                    cell.img?.image = image as? UIImage
//                }
//            }
//        }else{
            let d = imageArr[indexPath.row]["img"]
            if let image = d {
                cell.img?.image = image as? UIImage
            }
       // }
        
        cell.btnCancel.tag = indexPath.row
        cell.btnCancel.addTarget(self, action: #selector(removeProductPhotoAction(sender:)), for: .touchUpInside)
        
        return cell
    }
    
    @objc func removeProductPhotoAction(sender:UIButton){
        
        let sendImageStr = ArrDataSend[sender.tag]
      //  sendImageId = Int(sendImageStr) ?? 0
       // print(sendImageId)
        
//        if sender.tag < ArrGallery.count{
//           // ArrGallery.remove(at: sender.tag)
//            // ImageDeleteApi(ImageId: ArrDataSend[sender.tag][sendImageId] as! Int)
//            ArrDataSend.remove(at: sender.tag)
//            PostCollection.reloadData()
//        }
//        else{
//
//            let dictRegParam = [
//
//                "image_id":  ""
//
//            ]  as [String : Any]
//      self.PostCollection.reloadData()
//
//
//            print(dictRegParam)
//
////            ApiManager.apiShared.sendRequestServerPostWithHeader(url: ImageDeleteUrl, VCType: self, dictParameter: dictRegParam, success: { (ResponseJson) in
////
////                let stCode = ResponseJson["status_code"].int
////                let strMessage = ResponseJson["message"].string
////                if stCode == 200{
////
////                    self.imageArr.remove(at: sender.tag)
////
////                    self.ArrDataSend.remove(at: sender.tag)
////                    self.collectionViewPost.reloadData()
////                    self.showCustomPopupView(altMsg: strMessage ?? "", alerttitle: "Success!".localized(), alertimg: UIImage(named: "Successimg") ?? UIImage(), OkAction: {
////                        self.dismiss(animated: true, completion: nil)
////                    })
////
////                }else{
////
////                }
////
////            }) { (Strerr,stCode) in
////                self.showCustomPopupView(altMsg: Strerr, alerttitle: "Error!".localized(), alertimg: UIImage(named: "Errorimg") ?? UIImage(), OkAction: {
////                    self.dismiss(animated: true, completion: nil)
////                })
////            }
//
//
//            //  ImageDeleteApi()
//
//
//        }
        
        
    }
}
extension AddPostVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.size.width/4) - 10, height: collectionView.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 8
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
}
