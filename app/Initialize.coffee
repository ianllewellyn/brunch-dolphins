Application = require 'Application'

$ ->
	
	#NOTE: This is to resolve a conflict where a **Backbone.Model** passed into an eco
	# template will cause a problem because eco tries to use the models own **escape**
	# method if it exists. This is a problem because they work differently.
	# Backbone doesn't use Backbone.Model.escape, it uses _.escape instead so I'm
	# removing it from the prototype.
	delete Backbone.Model::escape
	
	# Kick off the application
	app = new Application()
