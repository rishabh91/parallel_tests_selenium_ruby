require 'rspec'
require 'yaml'
require 'selenium-webdriver'

describe "Parallel try1" do
	
	
    before(:all) do 
		con = YAML.load_file("drivers.yml")
		@test2 = con['test2']
		@test2.manage().window().maximize()
	end
	after(:all) do 
		@test2.quit
	end

    it "Get fb homepage" do 
    	@test2.get("https://www.facebook.com")
    	
    end

end