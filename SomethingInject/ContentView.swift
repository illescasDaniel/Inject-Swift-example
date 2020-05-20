//
//  ContentView.swift
//  SomethingInject
//
//  Created by Daniel Illescas Romero on 20/05/2020.
//  Copyright © 2020 Daniel Illescas Romero. All rights reserved.
//

import SwiftUI
import Inject

struct ContentView: View {
	
	@Inject()
	var userRepository: UserRepository
	
	@InjectSingleton()
	var authentication: Authentication
	
	init(
		userRepository: UserRepository?,
		authentication: Authentication?
	) {
		self.$userRepository = userRepository
		self.$authentication = authentication
	}
	
    var body: some View {
		VStack {
			Text(userRepository.fetch())
			Text(authentication.loggedUser ?? "nil")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(userRepository: nil, authentication: nil)
    }
}
