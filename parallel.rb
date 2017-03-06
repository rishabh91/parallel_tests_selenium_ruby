require 'selenium-webdriver'
require 'yaml'

def parrallel_test
    threads = []
    drivers = {}
  	specs = YAML.load_file("specs.yml") 
    specs.each do |k,v|
        v = v.split(' ')
        threads << Thread.new do 
        case v.last
        when 'firefox'
          Thread.current[:driver] = Selenium::WebDriver.for :firefox
          drivers[k] = Thread.current[:driver]
          File.open('drivers.yml','w') do |fp|
            fp.write drivers.to_yaml
          end
          yield(v.last)
        when 'chrome'
          Selenium::WebDriver::Chrome::Service.executable_path = File.join(Dir.pwd,'vendor/chromedriver')
          Thread.current[:driver] = Selenium::WebDriver.for :chrome
          drivers[k] = Thread.current[:driver]
          File.open('drivers.yml','w') do |fp|
            fp.write drivers.to_yaml
          end
          yield(v.last)
        end
    end 
		threads.each { |thread| thread.join }
end
parrallel_test do |spec|
	system "rspec #{spec} "
  
end


