//
//  AppDelegate.swift
//  ApolloClient
//
//  Created by Rex Chen on 2024/7/23.
//

import UIKit
import Apollo
import RocketReserverAPI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    class Network {
      static let shared = Network()

      private(set) lazy var apollo = ApolloClient(url: URL(string: "http://localhost:4000/graphql")!)
    }
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        Network.shared.apollo.fetch(query: BookQuery(title: "The Awakening")) { result in
            switch result {
            case .success(let qresult):
                if let book = qresult.data?.book {
                    print(book.title ?? "", book.author ?? "")
                }
            case .failure(let error):
                print("failure \(error)")
            }
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    
    }
    
    

}

