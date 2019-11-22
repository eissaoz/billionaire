//
//  MainController.swift
//  PaylessSendMore
//
//  Created by Osmanics Software on 11/17/19.
//  Copyright © 2019 Osmanics Software. All rights reserved.
//

import UIKit
import NVActivityIndicatorView
import SwipeableTabBarController
class MainController: UIViewController {

    @IBOutlet weak var LoadingView: NVActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyUserLightInterfaceStyle()
        LoadingView.type = .circleStrokeSpin
        LoadingView.color = UIColor(red: 171/255, green: 171/255, blue: 171/255, alpha: 1.0)
        GoToLoginView()
    
        
    }
    
    func GoToLoginView() {
        LoadingView.startAnimating()
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(LoginNow), userInfo: nil, repeats: false)
    }
    
    @objc func LoginNow() {
        LoadingView.stopAnimating()
        let sb = UIStoryboard(name: "Home", bundle: nil)
        let Vc = sb.instantiateViewController(identifier: "Home") as! SwipeableTabBarController
        Vc.modalPresentationStyle = .fullScreen
        self.present(Vc, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

