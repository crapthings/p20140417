Template['business.signup'].events
	'submit form': (e, t) ->
		e.preventDefault()
		options = form2js 'signupForm'
		Meteor.call 'createBusinessUser', options, (err) ->
			unless err
				Router.go '/business/signin'
