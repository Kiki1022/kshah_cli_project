require 'json'
require 'net/http'
require 'pry'
require 'open-uri'
require_relative "../lib/kshah_cli_project/version"
require_relative "../lib/kshah_cli_project/cli"
require_relative "../lib/kshah_cli_project/api"
require_relative "../lib/kshah_cli_project/lipstick"


module KshahCliProject
  class Error < StandardError; end
  # Your code goes here...
end
