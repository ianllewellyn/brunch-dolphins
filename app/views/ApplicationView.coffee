ApplicationTemplate = require 'views/templates/ApplicationTemplate'

class ApplicationView extends Backbone.View
	
	className: 'app-view'
	tagName: 'div'
	template: ApplicationTemplate
	
	render: =>
		@$el.html @template @model
		this

module?.exports = ApplicationView
