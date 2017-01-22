require 'selenium-webdriver'
require 'yaml'

def parrallel_test
    
  		threads = []
      drivers = {}
  		specs = YAML.load_file("specs.yml") 

  		specs.each do |key,spec|
  	
    		threads << Thread.new do
    				puts "inside threads :#{spec}"
    				Thread.current[:driver] = Selenium::WebDriver.for :firefox
    				
            drivers[key] = Thread.current[:driver] 
    				File.open('drivers.yml','w') do |fptr| 
                fptr.write drivers.to_yaml
            end
            
            yield(spec)
      				
    		end
  		end
		threads.each { |thread| thread.join }
end
parrallel_test do |spec|
	system "rspec #{spec} "
  
end


