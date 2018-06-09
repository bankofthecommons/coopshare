/**
 * Module dependencies.
 */
var http = require('http')
var connect = require('connect')
var proxy = require('../../index') // require('http-proxy-middleware');

/**
 * Configure proxy middleware
 */
var jsonPlaceholderProxy = proxy({
  target: 'http://freecoin:3000',
  changeOrigin: true, // for vhosted sites, changes host header to match to target's host
  logLevel: 'debug'
})

var app = connect()

/**
 * Add the proxy to connect
 */
app.use('/', jsonPlaceholderProxy)

http.createServer(app).listen(2000)

console.log('[DEMO] Server: listening on port 2000')
console.log('[DEMO] Opening: http://localhost:2000')

require('opn')('http://freecoin:3000')
