//
//  AppDelegate.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let mainVC = MainVC(nibName: Global.shared.nibForView(MainVC.self), bundle: nil)
        let navController = UINavigationController(rootViewController: mainVC)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        return true
    }
}




