jasmine-testling-ci
===================

example for running jasmine tests on ci.testling.com

usage
-------------------
First add a github web hook to your repo (under admin/hooks) for "http://git.testling.com".

Then push code to github.

Next go to "http://ci.testling.com/USER/PROJECT" to see your test status.

Then you can add a badge in your readme.markdown with the test status:

[![browser support](http://ci.testling.com/hden/jasmine-testling-ci.png)](http://ci.testling.com/hden/jasmine-testling-ci)

inspired by https://github.com/substack/mocha-testling-ci-example
license
MIT