Template['backend.signin'].events
	'submit form': (e, t) ->
		e.preventDefault()
		options = form2js 'signinForm'
		Meteor.loginWithPassword options.username, options.password, (err) ->
			unless err
				Router.go 'backend.home'
