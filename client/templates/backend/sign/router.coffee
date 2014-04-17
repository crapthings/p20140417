Router.map ->
	@route 'backend.signin',
		path: '/backend/signin'
		onBeforeAction: ->
			if Meteor.user() and Meteor.user().role is 'administrator'
				Router.go 'backend.home'
