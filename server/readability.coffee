Future = Npm.require 'fibers/future'

Meteor.methods
  'readability': (url) ->
    fut = new Future()
    opts =
      params:
        url: url
        token: Meteor.settings.READABILITY_TOKEN
    Meteor.http.get 'http://www.readability.com/api/content/v1/parser', opts, (err, res) ->
      fut.ret res.data
    fut.wait()
