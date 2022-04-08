//
//  TabBarViewController.swift
//  TikTokApp
//
//  Created by Антон on 05.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupControllers()
        

        // Do any additional setup after loading the view.
    }
    
    
    private func setupControllers() {
         let homeVC = HomeViewController()
        let exploreVC = ExploreViewController()
        let cameraVC = CameraViewController()
        let notifVC = NotificationsViewController()
        let profileVC = ProfileViewController()
        
        homeVC.title = "Home"
        exploreVC.title = "Explore"
        notifVC.title = "Notifivations"
        profileVC.title = "Profile"
        
        let nav1 = UINavigationController(rootViewController: homeVC)
        let nav2 = UINavigationController(rootViewController: exploreVC)
        let nav3 = UINavigationController(rootViewController: notifVC)
        let nav4 = UINavigationController(rootViewController: profileVC)
        
        nav1.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: nil , image: UIImage(systemName: "safari"), tag: 2)
        cameraVC.tabBarItem = UITabBarItem(title: nil , image: UIImage(systemName: "camera"), tag: 3)
        nav3.tabBarItem = UITabBarItem(title: nil , image: UIImage(systemName: "bell"), tag: 4)
        nav4.tabBarItem = UITabBarItem(title: nil , image: UIImage(systemName: "person.circle"), tag: 5)
        
        setViewControllers([nav1,nav2,cameraVC, nav3,nav4], animated: false)
    }

}
