###
# ownCloud
#
# @author Bernhard Posselt
# Copyright (c) 2012 - Bernhard Posselt <nukeawhale@gmail.com>
#
# This file is licensed under the Affero General Public License version 3 or later.
# See the COPYING-README file
#
###

angular.module('AppTemplateAdvanced', ['OC']).config ['$provide', ($provide) ->

	# Use this for configuration values
	Config =
		myParam: 'test'

	# declare your routes here
	# Hint: angularjs comes with an own route system with which you can
	# build HTML5 apps with enabled history access, meaning: you can go
	# forward and backward and change the state of your app
	# http:#docs.angularjs.org/api/ng.$route
	Config.routes =
		saveNameRoute: 'apptemplate_advanced_ajax_setsystemvalue'

	return $provide.value('Config', Config)
]


# This function is run once angular is set up. That doesnt mean though that
# the document is ready
angular.module('AppTemplateAdvanced').run ['$rootScope', ($rootScope) ->

	init = ->
		$rootScope.$broadcast('routesLoaded')

	# this registers a callback that is executed once the routes have
	# finished loading. Before this you cant really do request
	OC.Router.registerLoadedCallback(init)
]