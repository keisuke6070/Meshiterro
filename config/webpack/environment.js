const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
   $: 'jqery/src/jqery',
   jQery:'jqery/src/jqery',
   Popper:'popper.js'
  })
  )

module.exports = environment
