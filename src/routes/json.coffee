match = require '../models/match'

module.exports = (app) ->

    app.namespace '/json', (req, res) ->

        app.get '/season', (req, res) ->
            match.allMatches (err, docs) ->
                res.send docs




	                # app.get '/matches', (req, res) ->
	                #         couch.matchDb().get '09f53feac1632665f9a2a7ab8631967d', (err, doc) ->
	                #                 res.send(doc.match)