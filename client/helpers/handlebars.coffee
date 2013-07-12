Handlebars.registerHelper 'ifEqual', (context, options) ->
  if context == options.hash.compare
    return options.fn(this)
  return options.inverse(this)

Handlebars.registerHelper 'active', (path) ->
  if Meteor.Router.page() == path then 'active' else ''

Handlebars.registerHelper 'ago', (datetime) ->
  moment(datetime).fromNow()
