//
//  UserRepository.swift
//  SomethingInject
//
//  Created by Daniel Illescas Romero on 20/05/2020.
//  Copyright © 2020 Daniel Illescas Romero. All rights reserved.
//

protocol UserRepository {
	func fetch() -> User
}

class DefaultUserRepository: UserRepository {
	func fetch() -> User {
		return "Daniel96"
	}
}
