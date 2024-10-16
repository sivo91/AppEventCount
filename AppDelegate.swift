//
//  AppDelegate.swift
//  AppEventCount
//
//  Created by Peter Sivak on 10/14/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var launchCount = 0
    var configurationForConnectingCount = 0

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        launchCount += 1
        print("did finish lauching")
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        configurationForConnectingCount += 1
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}

