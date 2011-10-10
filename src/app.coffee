express = require('express')
app = express.createServer()
require('express-namespace')

# Setup Template Engine
app.register '.coffee', require('coffeekup')
app.set 'view engine', 'coffee'

# Setup Static Files
app.use express.static(__dirname + '/public')

# App Routes
require('./routes/json')(app)

# Listen
app.listen process.env.PORT || 8000