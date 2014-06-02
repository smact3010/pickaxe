# eahd_test.rb
require 'colorize'
require_relative 'device'

def assert message, &block
  begin
    if (block.call)
      print "Assert #{message}... "
      puts "Passed!".green
    else
      print "Assert #{message}... "
      puts "Failed.".red
    end
  rescue => e
      print "Assert #{message}... "
      print "Failed".red
      puts ", with exception:"
      puts "  '#{e}'"
  end
end

bridge = Device.new("Switch (10)")

bridge.set_environment_info("https://demo.mynexia.com")
bridge.get_environment_info

bridge.set_account_info("demostatic", "XCsdwe23")
bridge.get_account_info

bridge.set_home_info("DEMO_BROOM_12345")
bridge.get_home_info

bridge.set_controller_info (123456789012)
bridge.get_controller_info

bridge.get_device_info

puts "\nStarting Automated Test..."

print "Launching browser and navigating to: #{bridge.url}... "
browser = Watir::Browser.new
browser.goto "#{bridge.url}"
puts "Success!".yellow

assert('Page title is: "Nexia™ Home Intelligence"') { browser.title == 'Nexia™ Home Intelligence' }

div_id_welcome_home_container = browser.div(:id => 'welcome-home-container')
assert('div exists?') { div_id_welcome_home_container.exists? }
assert('div visible?') { div_id_welcome_home_container.visible? }
assert('div text') { div_id_welcome_home_container.text }

assert('h1 exists?') { div_id_welcome_home_container.h1.exists? }
assert('h1 visible?') { div_id_welcome_home_container.h1.visible? }
puts " h1 text: #{div_id_welcome_home_container.h1.text}"
assert('h1 text is expected') { div_id_welcome_home_container.h1.text == 'Welcome to Nexia™ Home Intelligence' }

assert('h3 exists?') { div_id_welcome_home_container.h3.exists? }
assert('h3 visible?') { div_id_welcome_home_container.h3.visible? }
puts " h3 text: #{div_id_welcome_home_container.h3.text}"
assert('h3 text is expected') { div_id_welcome_home_container.h3.text == 'Monitor & Control your home from anywhere' }

assert('image exists?') { div_id_welcome_home_container.img.exists? }
assert('image visible?') { div_id_welcome_home_container.img.visible? }
puts " img alt: #{div_id_welcome_home_container.img.attribute_value('alt')}"
assert('img src is expected') { div_id_welcome_home_container.img.attribute_value('src') == 'https://demo.mynexia.com/assets/nexia/device-family-5959092fedc0fe7891df704b212ba85e.jpg' }
puts " img height: #{div_id_welcome_home_container.img.height}"
puts " img width: #{div_id_welcome_home_container.img.width}"
# puts " img file size: #{div_id_welcome_home_container.img.file_size}"
# assert('image exists?') { div_id_welcome_home_container.img.exists? }
# <img src="/assets/nexia/device-family-5959092fedc0fe7891df704b212ba85e.jpg" alt="Device-family">

print "Entering username \"#{bridge.username}\"... "
browser.text_field(:id => 'login').set "#{bridge.username}"
puts "Success!".yellow

print "Entering password \"#{bridge.password}\"... "
browser.text_field(:id => 'password').set "#{bridge.password}"
puts "Success!".yellow

print "Clicking link (button) \"Login\"... "
browser.link(:id => 'login').click
puts "Success!".yellow

print "Closing browser... "
browser.close
puts "Success!".yellow
