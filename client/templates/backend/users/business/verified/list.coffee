Template.verifiedUserItem.events
	'click .invalidateUser': (e, t) ->
		e.preventDefault()
		Meteor.call 'invalidateUser', @_id

	'click .removeUser': (e, t) ->
		e.preventDefault()
		Meteor.call 'removeUser', @_id
