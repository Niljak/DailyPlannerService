//
//  Task.swift
//  App
//
//  Created by Niels Jakobsen on 22/05/2019.
//

import Foundation
import Vapor

struct Task: Codable {
	let name: String
	let completed: Bool
	let createdAt: Date
}

extension Task: Content {}
