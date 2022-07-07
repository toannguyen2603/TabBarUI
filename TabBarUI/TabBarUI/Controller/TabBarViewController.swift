//
//  TabBarViewController.swift
//  TabBarUI
//
//  Created by Nguyễn Hữu Toàn on 07/07/2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SocialViewController())
        let vc3 = UINavigationController(rootViewController: CameraViewController())
        let vc4 = UINavigationController(rootViewController: NotificationViewController())
        let vc5 = UINavigationController(rootViewController: ProfileViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "globe")
        vc3.tabBarItem.image = UIImage(systemName: "plus")
        vc4.tabBarItem.image = UIImage(systemName: "bell")
        vc5.tabBarItem.image = UIImage(systemName: "person")
        
        vc1.title = "Home"
        vc2.title = "Social"
        vc3.title = "Camera"
        vc4.title = "Notification"
        vc5.title = "Profile"
        
        tabBar.backgroundColor = .systemBackground
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: true)

    }
    
}

