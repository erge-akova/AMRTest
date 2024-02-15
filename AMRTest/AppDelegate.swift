//
//  AppDelegate.swift
//  AMRTest
//
//  Created by Erge AKOVA on 18.10.2023.
//

import UIKit
import AMRSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        AMRSDK.start(withAppId:"15066ddc-9c18-492c-8185-bea7e4c7f88c")
        return true
    }
}
