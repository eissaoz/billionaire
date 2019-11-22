//
//  TabController.swift
//  
//
//  Created by Osmanics Software on 11/11/19.
//

import UIKit
import SwipeableTabBarController

class TabController: SwipeableTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let viewcontrollers = viewControllers {
            selectedViewController = viewcontrollers[2]
        }

        
        swipeAnimatedTransitioning?.animationType = SwipeAnimationType.push
        
        isCyclingEnabled = true
        
        
    }
    


}
