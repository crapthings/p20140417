@Users = Meteor.users

Meteor.methods

	createBusinessUser: (options) ->
		_.extend options,
			business: true
		Accounts.createUser options

	createAdminUser: (options) ->
		_.extend options,
			role: 'administrator'
		Accounts.createUser options

	removeUser: (userId) ->
		Users.remove userId

	validateUser: (userId) ->
		Users.update userId,
			$set:
				verified: true

	invalidateUser: (userId) ->
		Users.update userId,
			$set:
				verified: false

if Meteor.isServer

		Meteor.publish '', ->
			Users.find {},
				fields:
					services: false
