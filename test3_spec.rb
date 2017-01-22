require 'rspec'
require 'yaml'
require 'selenium-webdriver'

describe "Parallel try2" do
	
	
    before(:all) do 
		con = YAML.load_file("drivers.yml")
		@test3 = con['test3']
		@test3.manage().window().maximize()
	end
	after(:all) do 
		@test3.quit
	end


    it "Get Youtube homepage" do 
    	@test3.get("https://www.youtube.com")
    end

end