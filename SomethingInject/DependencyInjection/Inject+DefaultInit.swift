//
//  Inject+DefaultInit.swift
//  SomethingInject
//
//  Created by Daniel Illescas Romero on 20/05/2020.
//  Copyright © 2020 Daniel Illescas Romero. All rights reserved.
//

import Inject

extension Inject {
	init() {
		self.init(resolver: DependencyInjection.dependencies)
	}
}

extension InjectSingleton {
	init() {
		self.init(resolver: DependencyInjection.singletons)
	}
}
