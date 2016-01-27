require 'net/http'
require 'json'
require 'rspec'
require 'benchmark'
require 'pry'

$uri_hostname = ENV['HOSTNMAME'] || "https://3tc6jnyhui.execute-api.us-west-2.amazonaws.com/qa"


# https://3tc6jnyhui.execute-api.us-west-2.amazonaws.com/qa/tracking/activities
