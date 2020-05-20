//
//  DependencyInjection.swift
//  SomethingInject
//
//  Created by Daniel Illescas Romero on 20/05/2020.
//  Copyright © 2020 Daniel Illescas Romero. All rights reserved.
//

import Inject

enum DependencyInjection {
	static let dependencies: DependencyResolver = DefaultDependencyResolver()
	static let singletons: SingletonResolver = DefaultSingletonResolver()
}
