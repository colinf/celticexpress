cradle = require 'cradle'
credentials = (require './credentials').db 

localDb =
	host: 'localhost'
	port: 5984
	secure: false
	auth: credentials.local

irisDb =
    host: 'colinf.iriscouch.com'
    port: 5984
    secure: false
    auth: credentials.iris

herokuDb =
        host: 'app590836.heroku.cloudant.com'
        port: 443
        secure: true
        auth: credentials.heroku

production = -> false

dbConfig = ->
	if production()
		herokuDb
	else
		irisDb
		
connection = new cradle.Connection (dbConfig())

exports.matchDb = ->
	connection.database 'celtic-match-db'