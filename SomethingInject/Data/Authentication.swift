//
//  Authentication.swift
//  SomethingInject
//
//  Created by Daniel Illescas Romero on 20/05/2020.
//  Copyright © 2020 Daniel Illescas Romero. All rights reserved.
//

typealias User = String

protocol Authentication {
	var token: String? { get set }
	var loggedUser: User? { get set }
}

class DefaultAuthentication: Authentication {
	var token: String?
	var loggedUser: User?
}
