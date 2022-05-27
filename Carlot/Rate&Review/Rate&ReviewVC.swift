//
//  Rate&ReviewVC.swift
//  Carlot
//
//  Created by emizentech on 5/12/22.
//

import UIKit

class Rate_ReviewVC: UIViewController , UITextViewDelegate{

    @IBOutlet weak var addReviewTxt: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addReviewTxt.text = " Type here..."
        addReviewTxt.delegate = self
       
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
//        if textView.textColor == UIColor.lightGray {
//            textView.text = nil
//            textView.textColor = UIColor.white
//
//        }
        
        if addReviewTxt.text == " Type here..."{
            addReviewTxt.text = ""
        }
       
    }
    
//    func textViewDidEndEditing(_ textView: UITextView) {
//        if textView.text.isEmpty {
//            textView.text = " Type here..."
//            textView.textColor = UIColor.lightGray
//        }
//
//        if textView.text == ""{
//            addReviewTxt.text = " Type here..."
//        }
//
//        if addReviewTxt.text == ""
//        {
//            addReviewTxt.text = " Type here..."
//        }
//    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = " Type here..."
            textView.textColor = UIColor.lightGray
        }
        
        if textView.text == ""{
            addReviewTxt.text = " Type here..."
        }
        
        if addReviewTxt.text.isStringBlank()
        {
            addReviewTxt.text = " Type here..."
        }
    }

}
