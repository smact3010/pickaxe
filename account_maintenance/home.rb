# home.rb
# Home class designed to create home objects

require_relative 'account'

class Home < Account

	attr_accessor :home_name

	def initialize(home_name)
		@home_name = home_name
		# @country
		# @home_street_address
		# @home_address_2
		# @home_city
		# @home_state
		# @home_zip_code
		# @time_zone
	end

	def set_home_info(home_name)
		@home_name = home_name
	end

	def get_home_info
		puts "--------------------------------------------------"
		puts "Home Information:"
		puts "--------------------------------------------------"
		puts "  Home Name: #{@home_name}"		
	end
end