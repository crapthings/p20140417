Router.map ->
	@route 'backend.users.business.verified',
		path: '/backend/users/business/verified'
		data: ->
			users: Users.find { business: true, verified: true },
				sort:
					timestamp: -1
