matchDb = (require './db').matchDb
sys = require 'sys'

# exports.matchesForSeason = (season) ->
# 	matchDb.view 'celtic-match-db/bydate', {key: season}, (err, doc) ->

exports.allMatches = (callback) ->
	matchDb().view 'celtic-match-db/bydate', (err, res) ->
		if err
			callback err
		else
			docs = []
			res.forEach (row) ->
				docs.push row
			callback null, docs
