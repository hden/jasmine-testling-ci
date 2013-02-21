expose = (obj) -> window[key] = obj[key] for key of obj

# attach jasmine to window
expose require('./lib/jasmine/jasmine.js')

# attach tap reporter to jasmine
# this is essential for running tests on ci.testling.com
require './lib/jasmine-reporters/jasmine.tap_reporter.js'

# expose helpers
expose require('./spec/SpecHelper')

# insert test files here
require('./spec/SimpleSpec')

# or write browser specific test here
describe 'Browser Suite', ->
  it 'Should pass a basic truthiness test.', ->
    expect(true).toEqual(true)
    expect(false).toEqual(false)

startJasmine = ->
  jasmine.getEnv().addReporter new jasmine.TapReporter()
  jasmine.getEnv().execute()

currentWindowOnload = window.onload

window.onload = ->
  currentWindowOnload() if currentWindowOnload?
  setTimeout startJasmine, 1