//
//  SceneDelegate.swift
//  AppEventCount
//
//  Created by Peter Sivak on 10/14/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var viewController: ViewController? {
        return window?.rootViewController as? ViewController
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        viewController?.willConnectCount += 1
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        viewController?.didBecomeActiveCount += 1
        viewController?.updateView()
        print("did become active")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        viewController?.willResignActiveCount += 1
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        viewController?.willEnterForegroundCount += 1
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        viewController?.didEnterBackgroundCount += 1
    }
}


