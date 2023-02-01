//
//  AppDelegate.swift
//  00TestProj
//
//  Created by Александр Фофонов on 26.01.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private let assembly = Assembly()
    
    lazy var formatter: DateFormatter = assembly.dateFormatter(format: .FULL) as! DateFormatter

    let defaults = UserDefaults.standard

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let lastSessionDateStr = defaults.string(forKey: "lastSessionDate") ?? formatter.string(from: Date.now)
        
        let optionLastSessionDate = formatter.date(from: lastSessionDateStr)
        if let lastSessionDate = optionLastSessionDate {
            let dateDifference = Int(Date.now - lastSessionDate)
            
            switch dateDifference {
            case -10..<1:
                print("Первый запуск")
            case 1..<60:
                print("\(dateDifference) [секунды]")
            case 60..<(60 * 60):
                print("\(Int(dateDifference / 60)) [минуты]")
            case (60 * 60)..<(60 * 60 * 24):
                print("\(Int(dateDifference / 60 / 60)) [часы]")
            default:
                print("\(Int(dateDifference / 60 / 60 / 24)) [дни]")
            }
        }
        
        return true
        
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        

        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
        
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        
        
        
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        
        
        
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        
        defaults.set(formatter.string(from: Date.now), forKey: "lastSessionDate")
        
    }

//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }


}

