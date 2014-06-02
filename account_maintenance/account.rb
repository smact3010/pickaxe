# account.rb
# Account class designed to create account objects

require_relative 'environment'

class Account < Environment

	attr_accessor :username, :password

	def initialize(username, password)
		@username	= username
		@password	= password
	end

	def set_account_info(username, password)
		@username	= username
		@password	= password
	end

	def get_account_info
		puts "--------------------------------------------------"
		puts "Account Information:"
		puts "--------------------------------------------------"
		puts "  User: #{@username}"
		puts "  Pass: #{@password}"
	end
end