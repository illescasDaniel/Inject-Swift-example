//
//  AppDelegate.swift
//  SomethingInject
//
//  Created by Daniel Illescas Romero on 20/05/2020.
//  Copyright © 2020 Daniel Illescas Romero. All rights reserved.
//

import UIKit
import Inject

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		addDependencies()
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

	//
	
	private func addDependencies() {
		typealias DI = DependencyInjection
		
		DI.dependencies.add(
			UserRepository.self,
			using: DefaultUserRepository()
		)
		
		DI.singletons.add(
			Authentication.self,
			using: DefaultAuthentication()
		)
		var v = DI.singletons.resolve(Authentication.self)
		v.loggedUser = "Daniel"
		
		// or:
		//DI.singletons.add(DefaultAuthentication())
		//DI.singletons.resolve(DefaultAuthentication.self).loggedUser = "Daniel"
	}

}

