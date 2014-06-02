# controller.rb
# Conroller class designed to create controller objects

require_relative 'home'

class Controller < Home

	attr_accessor :mac_address

	def initialize(mac_address)
		@mac_address = mac_address
	end

	def set_controller_info(mac_address)
		@mac_address = mac_address
	end

	def get_controller_info
		puts "--------------------------------------------------"
		puts "Controller Information:"
		puts "--------------------------------------------------"
		puts "  Controller Mac Address: #{@mac_address}"
	end
end
