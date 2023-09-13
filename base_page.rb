class BasePage
require 'watir'
require_relative 'base_page' # Use 'require' if needed

  def initialize(browser)
    @browser = browser
  end

  def navigate_to(url)
    @browser.goto("http://64.227.160.66/betindiaraces/#/signin")
  end
end
