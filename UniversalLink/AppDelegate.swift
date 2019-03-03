//
//  AppDelegate.swift
//  UniversalLink
//
//  Created by Haruko Okada on 2019/02/17.
//  Copyright © 2019 Haruko Okada. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
    
        guard let url : URL = userActivity.webpageURL else { return false}
        guard let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true) else { return false}

        let navigationController = window?.rootViewController as? UINavigationController
        
        if (urlComponents.path == "/iostest/1"){
            print("Path: " + urlComponents.path)
            //navigationController?.pushViewController(storyBoard.instantiateViewController(withIdentifier: "test1"), animated: true)
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "test1")
            navigationController?.present(controller, animated: true, completion: nil)
            print("Done!!!")
            
            
            
            //navigationController?.show(storyBoard.instantiateViewController(withIdentifier: "test1"), sender: nil)

            return true
        }

        return false
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
       
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

