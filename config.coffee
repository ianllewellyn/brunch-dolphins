exports.config =
	# See http://brunch.readthedocs.org/en/latest/config.html for documentation.
	files:
		javascripts:
			defaultExtension: 'coffee'
			joinTo:
				'js/app.js': /^app/
				'js/vendor.js': /^vendor/
				'test/js/test.js': /^test(\/|\\)(?!vendor)/
			order:
				before:
					[
						'vendor/scripts/zepto-1.0rc1.js'
						'vendor/scripts/underscore-1.3.3.js'
						'vendor/scripts/backbone-0.9.2.js'
					]
		
		stylesheets:
			defaultExtension: 'scss'
			joinTo:
				'css/style.css': /^(app|vendor)/
				'test/css/test.css': /^test/
			order:
				before:
					[
						'vendor/styles/normalize.css'
					]
		
		templates:
			defaultExtension: 'eco'
			joinTo: 'js/app.js'
	
	framework: 'backbone'
	
	# minify: true
	
	server:
		port: 8080
