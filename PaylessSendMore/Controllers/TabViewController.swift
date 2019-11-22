//
//  TabViewController.swift
//  PaylessSendMore
//
//  Created by Osmanics Software on 11/11/19.
//  Copyright © 2019 Osmanics Software. All rights reserved.
//

import UIKit
import SwipeableTabBarController
class TabViewController: SwipeableTabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        //MyUserLightInterfaceStyle()
        if #available(iOS 13, *) {
            let appearance = UITabBarAppearance()
            appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "AppPurple")!]
            tabBar.standardAppearance = appearance
        }
        self.tabBar.tintColor = UIColor.red
        
    }
    
}




    

  


