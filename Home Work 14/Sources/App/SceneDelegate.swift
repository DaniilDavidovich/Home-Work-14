//
//  SceneDelegate.swift
//  Home Work 14
//
//  Created by Daniil Davidovich on 12.01.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        let viewContoller = AlbumsViewController()
        let navigationContoller = UINavigationController(rootViewController: viewContoller)
        window?.rootViewController = navigationContoller
        window?.makeKeyAndVisible()
    }
}

