//
//  NavigatorModule.swift
//  FirstModule
//
//  Created by Jackson on 23/09/21.
//
import Foundation


@objc(NavigatorModule)
class NavigatorModule: NSObject {
  
  override init() {
    print("init")
  }

 @objc(navigate:)
 func navigate(_ name: String) -> Void {
   //Delegate
   print(name)
   print("navigate")
   print("nova versão")
   NavigatorModuleManager.openHome(name: name)
 }
}
