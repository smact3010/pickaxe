# scratch_test.rb

environment_1 = Environment.new("https://demo.mynexia.com")
puts "Environment: #{environment_1.url}"

account_1 = Account.new("demostatic", "XCsdwe23")
puts "Username: #{account_1.username}"
puts "Password: #{account_1.password}"

browser = Watir::Browser.new
browser.goto "#{environment_1.url}"

browser.text_field(:login, :id => 'login').set "#{account_1.username}"
browser.text_field(:password, :id => 'password').set "#{account_1.password}"

browser.link(:id => 'login').click 

# puts browser.span(:id => 'house_selector_toggle').text
puts browser.span(:id => 'house_selector_toggle').span(:class => 'house-name').text
#<span id="house_selector_toggle" class="popup-toggler">
# <span class="house-name">DEMO_BROOMFIELD_424B9</span>
browser.span(:id => 'house_selector_toggle').span(:class => 'arrow').click

puts browser.div(:id => 'house_selector').ul.text # .li(:selected => 'selected').text
browser.div(:id => 'house_selector').ul.li(:css, 'li[data-house-id]').style # => '93852').click
# browser.div(:id => 'house_selector').ul.li(:data-house-id => '95206').click
# browser.div(:id => 'house_selector').ul.li(:data-house-id => '94562').click
#.li( :class =>'b').link(:class =>'c').span(:class =>'d')
#<span class="house-name">DEMO_BROOMFIELD_424B9</span>

# <div id="house_selector" class="popup-menu" style="position: absolute; top: 28.5px; left: 85.5px; display: none;" name="house_selector">
# <ul>
# <li class="selected" data-house-id="93852">
# <img class="thumbnail" src="https://s3.amazonaws.com/demo_nexia/house_images/thumbnails/1382/thumb/DEMOstatic.jpg?AWSAccessKeyId=AKIAIYIUD35FZBREKR7A&Expires=1401586942&Signature=S%2Bi3Qbf1Sq0QY7jYkAyJtqJYPrU%3D">
# <span class="house-name">DEMO_BROOMFIELD_424B9</span>
# <a class="push_button edit with_icon edit-house" style="padding-top: 0px; padding-bottom: 0px; margin: 0px;" href="/houses/93852/edit">
# Edit
# <span></span>
# </a>
# </li>
# <li class="" data-house-id="95206">
# <img class="thumbnail" src="/assets/example-house-thumb.jpg">
# <span class="house-name">DEMO_BROOM_014001A4</span>
# <a class="push_button edit with_icon edit-house" style="padding-top: 0px; padding-bottom: 0px; margin: 0px;" href="/houses/95206/edit">
# </li>
# <li class="" data-house-id="94562">
# <img class="thumbnail" src="/assets/example-house-thumb.jpg">
# <span class="house-name">DEMO_TYLER_4DE6F</span>
# <a class="push_button edit with_icon edit-house" style="padding-top: 0px; padding-bottom: 0px; margin: 0px;" href="/houses/94562/edit">
# </li>
# </ul>

# browser.close