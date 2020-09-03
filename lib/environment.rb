require 'json'
require 'net/http'
require 'open-uri'
require 'colorize'
require 'pry'
require_relative "./kshah_cli_project/version"
require_relative "./kshah_cli_project/cli"
require_relative "./kshah_cli_project/api"
require_relative "./kshah_cli_project/lipstick"


module KshahCliProject
  class Error < StandardError; end
  # Your code goes here...
end
