require 'rspec'
require 'yaml'
require 'selenium-webdriver'



describe "Parallel try" do
	
	before(:all) do 
		con = YAML.load_file("drivers.yml")
		@test1 = con['test1']
		@test1.manage().window().maximize()
	end
	after(:all) do 
		@test1.quit
	end
    

    it "Get google homepage" do 
    	@test1.get("https://www.google.com")
    	
    end
    
end