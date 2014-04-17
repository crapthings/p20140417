Accounts.onCreateUser (options, user) ->

	if options.profile?
		_.extend user,
			profile: options.profile

	if options.business?
		_.extend user,
			business: options.business
			verified: false

	if options.role?
		_.extend user,
			role: options.role

	return user

Meteor.startup ->

	isAdminExist = Users.findOne { username: 'admin' }

	unless isAdminExist

		Meteor.call 'createAdminUser',
			username: 'admin'
			password: 'admin'
