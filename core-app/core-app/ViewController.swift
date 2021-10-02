//
//  ViewController.swift
//  core-app
//
//  Created by Jackson on 23/09/21.
//

import UIKit
import React
import FirstModule
import SecondModule

class ViewController: UIViewController {
    
    var loginVc: UIViewController?
    var HomeVc: UIViewController?
    
    @IBAction func didTapOpenLoginModule() {
        print("didTapOpenLoginModule")
        
        NavigatorModuleManager.delegate = self
                
        let frameworkBundle = Bundle(for: NavigatorModuleManager.self)
        var bundleURL = frameworkBundle.url(forResource: "FirstModule", withExtension: "bundle")
        bundleURL = bundleURL?.appendingPathComponent("FirstModuleBundle.js")
        
        
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
         let mockData:NSDictionary = ["scores":
             [
                 ["name":"Alex", "value":"42"],
                 ["name":"Joel", "value":"10"]
             ]
         ]

         let rootView = RCTRootView(
            bundleURL: bundleURL ?? jsCodeLocation!,
             moduleName: "FirstModule",
            initialProperties: [:],
             launchOptions: nil
         )
         let vc = UIViewController()
        loginVc = vc
         vc.view = rootView
         self.present(vc, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: NavigatorModuleDelegate {
    
    func openHome() {
        let frameworkBundle = Bundle(for: SecondModuleNavigatorTwo.self)
        var bundleURL = frameworkBundle.url(forResource: "SecondModule", withExtension: "bundle")
        bundleURL = bundleURL?.appendingPathComponent("SecondModuleBundle.js")
        
        print(bundleURL)
        
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
         let mockData:NSDictionary = ["scores":
             [
                 ["name":"Alex", "value":"42"],
                 ["name":"Joel", "value":"10"]
             ]
         ]

         let rootView = RCTRootView(
            bundleURL: bundleURL ?? jsCodeLocation!,
             moduleName: "SecondModule",
            initialProperties: [:],
             launchOptions: nil
         )
        
         let vc = UIViewController()
        HomeVc = vc
         vc.view = rootView
         self.present(vc, animated: true, completion: nil)
    }
    
    
    func navigate(to route: String) {
        print("open home")
        DispatchQueue.main.async {
            self.loginVc?.dismiss(animated: false, completion: {
                self.openHome()
            })
        }
     
    }
}

