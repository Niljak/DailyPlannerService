//
//  TasksController.swift
//  App
//
//  Created by Niels Jakobsen on 22/05/2019.
//

import Foundation
import Vapor

class TasksController {
	private lazy var dummyTasks: [Task] = {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd-MM-yyyy"
		
		return [
			Task(name: "Task 1", completed: false, createdAt: dateFormatter.date(from: "02-05-19")!),
			Task(name: "Task 2", completed: false, createdAt: dateFormatter.date(from: "10-05-19")!),
			Task(name: "Task 3", completed: false, createdAt: dateFormatter.date(from: "15-05-19")!)
		]
	}()
	
	func listTasks(_ request: Request) throws -> Future<Response> {
		return dummyTasks.encode(status: .ok, for: request)
	}
}
