{helper} = require './SpecHelper'

describe 'Individual Suites', ->
  it 'Tests can be written in seperated file.', ->
    expect(true).toEqual(true)
    expect(false).toEqual(false)
  it 'can utilize spec helpers as usual', ->
    # helper = (a, b) -> expect(a).toEqual(b)
    helper(true, true)