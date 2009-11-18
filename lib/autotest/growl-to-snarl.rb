require 'snarl'
module Autotest::Growl
 
  # Display a message through Snarl.
  def self.growl title, message, icon, priority=0, stick=""
    image = File.join(ENV['HOME'], '.autotest-growl', "#{icon}.png")
    image = File.join(GEM_PATH, 'img', "#{icon}.png") unless File.exists?(image)
 
	Snarl.show_message(title, message.inspect, image)
  end
 
end