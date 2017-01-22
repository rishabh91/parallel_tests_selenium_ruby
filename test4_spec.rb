require 'rspec'
require 'yaml'
require 'selenium-webdriver'

describe "Parallel try3" do
	
	
    before(:all) do 
		con = YAML.load_file("drivers.yml")
		@test4 = con['test4']
		@test4.manage().window().maximize()
	end
	after(:all) do 
		@test4.quit
	end

    it "Get freshdesk homepage" do 
    	@test4.get("https://freshdesk.com")
    end

end