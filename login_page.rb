require 'watir'

require_relative 'base_page'

class LoginPage < BasePage
  def initialize(browser)
    super(browser)
  def enter_credentials(username, password)
    @browser.text_field(xpath: '//div[@class="form-group"]/input').set('akm18111994@gmail.com')
    @browser.text_field(xpath: "//div[@class='col-lg-12']//input[@type='password']").set('Ak@12345')
  end

  def click_login_button
    @browser.button(xpath: '//div[@class="col-lg-6"]/button').click
  end
  end
  end
