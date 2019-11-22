//
//  LoginController.swift
//  PaylessSendMore
//
//  Created by Osmanics Software on 11/3/19.
//  Copyright © 2019 Osmanics Software. All rights reserved.
//

import UIKit
import SimpleRoundedButton
class LoginController: UIViewController {

    
    @IBOutlet weak var CreateAccount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        hideKeyboardWhenTappedAround()
        //MyUserLightInterfaceStyle()
           TaptheLabel()
    }
    func TaptheLabel() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(LoginController.tapFunction))
        self.CreateAccount.isUserInteractionEnabled = true
        self.CreateAccount.addGestureRecognizer(tap)
    }
    @objc func tapFunction(sender: UITapGestureRecognizer) {
        GoToSignUp()
    }
    func GoToSignUp() {
        let sb = UIStoryboard(name: "SignUp", bundle: nil)
        let Vc = sb.instantiateViewController(identifier: "SignUp") as! SignUpController
        Vc.modalTransitionStyle = .flipHorizontal
        Vc.modalPresentationStyle = .fullScreen
        self.present(Vc, animated: true, completion: nil)
    }
    

    
}
