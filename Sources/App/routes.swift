import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
	let tasksController = TasksController()
	router.get("tasks", use: tasksController.listTasks)
}
