require 'watir'
require 'selenium-webdriver'

sleep(2)
# Set the path to the ChromeDriver executable
Selenium::WebDriver::Service.driver_path="C:\\Users\\Vincent\\Downloads\\geckodriver-v0.33.0-win64(1)\\geckodriver.exe"

# Create a Logger instance
logger = Logger.new('test_report.log')
browser = Watir::Browser.new(:firefox)

# Start the timer
start_time = Time.now
#maximize the screen
browser.window.maximize
sleep(2)
browser.goto("http://64.227.160.66/betindiaraces/#/signin")
sleep(2)
# Locate and fill in the username and password fields
browser.text_field(xpath: '//div[@class="form-group"]/input').set 'akm18111994@gmail.com'
browser.text_field(xpath: "//div[@class='col-lg-12']//input[@type='password']").set 'Ak@12345'
sleep(2)
checkbox_element = browser.checkbox(id: 'rememcheck-web')
browser.execute_script("arguments[0].click();", checkbox_element)

browser.button(xpath: '//div[@class="col-lg-6"]/button').click

if browser.text.include?(' MY ACCOUNT  ')
  puts 'Login Successful!'
else
  puts 'Login Successful!'
end


date_input = browser.text_field(id: 'changebtn2-2023-09-06')
#text_area = browser.textarea(id: 'venue-0').click

element_to_click = browser.link(id: 'venue-0')
element_to_click.click

browser.button(xpath: '//div[@id="venue1"]//div[contains(@class,"row")]//div[1]//div[1]//div[2]//div[1]//button[1]').click
sleep(2)
#browser.button(xpath: "//*[@id='plusicon1']").click
browser.element(id: "plusicon1").click

#browser.button(xpath: '//input[@id="numberWin1"]').set '3'
#numberWin1 = browser.text_field(id: 'numberWin1')
#numberWin1.clear
#browser.element(id: "numberWin1").set '3'
browser.element(id: "increaseWin1").click


button = browser.button(value: 'Play')
button.text == 'Play' # => true
button.click




# Stop the timer
end_time = Time.now
# Calculate the elapsed time in seconds
elapsed_time = end_time - start_time

# Output the performance time
puts "Elapsed time: #{elapsed_time} seconds"

# Close the browser when you are done with your interactions
browser.close