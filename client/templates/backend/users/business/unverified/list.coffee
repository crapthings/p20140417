Template.unverifiedUserItem.events
	'click .validateUser': (e, t) ->
		e.preventDefault()
		Meteor.call 'validateUser', @_id

	'click .removeUser': (e, t) ->
		e.preventDefault()
		Meteor.call 'removeUser', @_id
