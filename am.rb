require 'watir'
require_relative 'base_page'
require_relative 'login_page'
browser = Watir::Browser.new :firefox
login_page = LoginPage.new(browser)

login_page.navigate_to("http://64.227.160.66/betindiaraces/#/signin")
login_page.enter_credentials('akm18111994@gmail.com', 'Ak@12345')
login_page.click_login_button

# Add assertions and further test steps
# Example of data-driven testing
test_data = [
  { username: 'akm18111994@gmail.com', password: 'Ak@12345' }

]

test_data.each do |data|
  login_page.visit("http://64.227.160.66/betindiaraces/#/signin")
  login_page.enter_credentials(data[:username], data[:password])
  login_page.click_login_button

  # Add assertions based on test data
end
