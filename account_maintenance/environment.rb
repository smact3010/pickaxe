# environment.rb
# Environment class designed to create envrionment objects

require 'rubygems'
require 'watir-webdriver'

class Environment

	attr_accessor :url # :build
	
	def initialize(url)
		@url = url
		# @build
	end

	def set_environment_info(environment)
		@url = environment		
	end

	def get_environment_info
		puts "--------------------------------------------------"
		puts "Environment Information:"
		puts "--------------------------------------------------"
		puts "  URL: #{@url}"
	end
end
