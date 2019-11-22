//
//  ViewController.swift
//  PaylessSendMore
//
//  Created by Osmanics Software on 10/31/19.
//  Copyright © 2019 Osmanics Software. All rights reserved.
//

import UIKit
import paper_onboarding


class ViewController: UIViewController{

    
    @IBOutlet weak var GoBtn: UIButton!
    
    
    
    
    fileprivate let items = [
    OnboardingItemInfo(informationImage: UIImage(named: "purse")!,
                       title: "Hotels",
                       description: "All hotels and hostels are sorted by hospitality rating",
                       pageIcon: UIImage(named: "iconf")!,
                       color: UIColor(red: 240/255, green: 128/255, blue: 128/255, alpha: 1.00),
                       titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: UIFont(name: "courier-bold", size: 24)!, descriptionFont: UIFont(name: "courier", size: 18)!),
    
    OnboardingItemInfo(informationImage: UIImage(named: "credit")!,
                       title: "Banks",
                       description: "We carefully verify all banks before add them into the app",
                       pageIcon: UIImage(named: "iconf")!,
                       color: UIColor(red: 65/255, green: 0/255, blue: 97/255, alpha: 1.00),
                       titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: UIFont(name: "courier-bold", size: 24)!, descriptionFont: UIFont(name: "courier", size: 18)!),
    
    OnboardingItemInfo(informationImage: UIImage(named: "payclick")!,
                       title: "Stores",
                       description: "All local stores are categorized for your convenience",
                       pageIcon: UIImage(named: "iconf")!,
                       color: UIColor(red: 139/255, green: 0/255, blue: 139/255, alpha: 1.00),
                       titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: UIFont(name: "courier-bold", size: 24)!, descriptionFont: UIFont(name: "courier", size: 18)!),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //MyUserLightInterfaceStyle()
        
        //BtnGetStarted!.isHidden = true
        GoBtn.isHidden = true
        setupPaperOnboardingView()

        view.bringSubviewToFront(GoBtn)
       
        
        
        
        
        
    }
    
   private func setupPaperOnboardingView() {
          let onboarding = PaperOnboarding()
          onboarding.delegate = self
          onboarding.dataSource = self
          onboarding.translatesAutoresizingMaskIntoConstraints = false
          view.addSubview(onboarding)

          // Add constraints
          for attribute: NSLayoutConstraint.Attribute in [.left, .right, .top, .bottom] {
              let constraint = NSLayoutConstraint(item: onboarding,
                                                  attribute: attribute,
                                                  relatedBy: .equal,
                                                  toItem: view,
                                                  attribute: attribute,
                                                  multiplier: 1,
                                                  constant: 0)
              view.addConstraint(constraint)
          }
      }
     func GoHome() {
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
       let myVC = storyboard.instantiateViewController(withIdentifier: "Main") as! MainController
       myVC.modalPresentationStyle = .fullScreen
       self.present(myVC, animated: true, completion: nil)
    }
    
    
    @IBAction func MainBtn(_ sender: Any) {
        GoHome()
        let mydefaults = UserDefaults.standard
        mydefaults.set(true, forKey: "OnBoardingComplete")
        mydefaults.synchronize()
    }
    
    
   /* private func showAlert(_ completion: @escaping (_ success: Bool, _ error: Error?) -> Void) {
      let alert = UIAlertController(title: "Allow Notifications?",
                                    message: "Habitat wants to send you notifications",
                                    preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
        completion(true, nil)
      })
      alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { _ in
        completion(false, nil)
      })
      presentedViewController?.present(alert, animated: true)
    }
*/
    
}
extension ViewController: PaperOnboardingDelegate {
    
    func onboardingConfigurationItem(_: OnboardingContentViewItem, index _: Int) {
        
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 0 || index == 1 {
            if self.GoBtn.isHidden == false {
                self.GoBtn.isHidden = true
                
            }
        }
    }
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 2 {
            self.GoBtn.isHidden = false
            }
        }
    }
    


extension ViewController: PaperOnboardingDataSource {
    func onboardingItemsCount() -> Int {
        return 3
    }
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        return items[index]
    }
}




































// Put this piece of code anywhere you like
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func MyUserLightInterfaceStyle() {
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
    }
}

