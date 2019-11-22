//
//  TabBarController.swift
//  PaylessSendMore
//
//  Created by Osmanics Software on 11/11/19.
//  Copyright © 2019 Osmanics Software. All rights reserved.
//

import UIKit
import SwipeableTabBarController

class TabBarController: SwipeableTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let Controllers = viewControllers {
            selectedViewController = Controllers[2]
        }
        
        swipeAnimatedTransitioning?.animationType = SwipeAnimationType.push
        
        isCyclingEnabled = true
        
        
    }
    
}
