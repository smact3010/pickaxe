# device.rb
# Device class designed to create device objects

require_relative 'controller'

class Device < Controller

	attr_accessor :device_name

	def initialize(device_name)
		@device_name = device_name
	end

	def get_device_info
		puts "--------------------------------------------------"
		puts "Device Information:"
		puts "--------------------------------------------------"
		puts "  Device Name: #{@device_name}"
	end
end