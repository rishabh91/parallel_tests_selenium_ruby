# parallel_tests_selenium_ruby
#Objective:
I wanted to run my automations parallely similar to what TestNG provides to Java users. The closest solution which i got for ruby was 
this repo : https://github.com/grosser/parallel_tests , but I was not satisfied as it just lets you run 4 tests at a time at max. The approach I am
using right now may not be the best solution out there but it lets me run multiple tests at the same time. I am using the multithreading concept
in ruby to achieve this. Suggestions and improvements are welcome. Its just an idea and I want the support of open source community to make it better.

mail me your suggestions at => rishabh.aditya@hotmail.com
How to setup?
===============

1. Clone the repository
2. Install all the gem files needed (rspec,selenium-webdriver) 
3. CD into the folder

How to run specs?
===============
1. Launch your terminal (be sure to be in the project folder)
2. Type 'ruby parallel.rb' and hit enter. 
