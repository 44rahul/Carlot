//
//  UIViewController+Storyboard.swift
//  CommunitySafetyWatch
//
//  Created by ABC on 4/10/18.
//  Copyright © 2018 ABC. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    class func instance(_ storyboard: Storyboard = .baseTab) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let identifier = NSStringFromClass(self).components(separatedBy: ".").last!
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
    
    func getAppDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func getSceneDelegate() -> SceneDelegate {
        return self.view.window?.windowScene?.delegate as! SceneDelegate
    }
}


enum Storyboard: String {
    
    case main = "Main"
    case baseTab = "BaseTab"
    case homeTab = "Home"
    case newAdTab = "Search"
    case profileTab = "Profile"
    case chatTab = "Chat"
}
