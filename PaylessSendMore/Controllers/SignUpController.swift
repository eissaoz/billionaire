//
//  SignUpController.swift
//  PaylessSendMore
//
//  Created by Osmanics Software on 11/10/19.
//  Copyright © 2019 Osmanics Software. All rights reserved.
//

import UIKit



class SignUpController: UIViewController {

    @IBOutlet weak var BackToLogin: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        hideKeyboardWhenTappedAround()
        let tap = UITapGestureRecognizer(target: self, action: #selector(SignUpController.tapFunction))
                BackToLogin.isUserInteractionEnabled = true
                BackToLogin.addGestureRecognizer(tap)
        }
       @objc func tapFunction(sender: UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
        }
    }
    
  




/* func GoHome() {
      let storyboard = UIStoryboard(name: "Home", bundle: nil)
      let myVC = storyboard.instantiateViewController(withIdentifier: "Home") as! CBFlashyTabBarController
      myVC.modalPresentationStyle = .fullScreen
      self.present(myVC, animated: true, completion: nil)
   }
   */
   
