Router.map ->
	@route 'home',
		path: '/'
		data: ->
			posts: Posts.find {},
				sort:
					timestamp: -1
