ApplicationModel = require 'models/ApplicationModel'
ApplicationView = require 'views/ApplicationView'
Config = require 'config'

class Application
	
	constructor: ->
		
		# Everything is ready so kick off the application
		appModel = new ApplicationModel
			title: Config.title
		appView = new ApplicationView
			model: appModel
		$('body').append appView.render().el

module.exports = Application
