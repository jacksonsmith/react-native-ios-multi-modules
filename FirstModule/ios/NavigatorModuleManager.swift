//
//  NavigatorModuleDelegate.swift
//  FirstModule
//
//  Created by Jackson on 24/09/21.
//

import Foundation

public protocol NavigatorModuleDelegate {
  func navigate(to route: String)
}

public class NavigatorModuleManager {
    public static var delegate: NavigatorModuleDelegate?
  
  init() {
    print("init")
  }
  
  func viewDidLoad() {
    print("viewDidLoad")
  }
  
  static func openHome(name: String) {
    print("NavigatorModuleDelegate openHome")
    print(delegate)
    delegate?.navigate(to: name)
  }
}
