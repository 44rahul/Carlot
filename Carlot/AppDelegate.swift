//
//  AppDelegate.swift
//  Carlot
//
//  Created by emizen on 4/27/22.
//

import UIKit
import GoogleMaps
import GooglePlaces
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        IQKeyboardManager.shared.enable = true
        // comment new
        GMSPlacesClient.provideAPIKey("AIzaSyCv1E0nUu88UcCXq_3h1Iv0R_voN5MBpp0")
        GMSServices.provideAPIKey("AIzaSyCv1E0nUu88UcCXq_3h1Iv0R_voN5MBpp0")
        
        
        let vc = LoginVC.instance(.Authentication) as! LoginVC
        let NavVC = UINavigationController(rootViewController: vc)
        NavVC.isNavigationBarHidden = true
        self.window?.rootViewController = NavVC
        self.window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
