require 'rspec'
require 'yaml'
require 'selenium-webdriver'

describe "Parallel try4" do
	
	
    before(:all) do 
		con = YAML.load_file("drivers.yml")
		@test5 = con['test5']
		@test5.manage().window().maximize()
	end
	after(:all) do 
		@test5.quit
	end

    it "Get freshservice homepage" do 
    	@test5.get("https://freshservice.com")
    end

end