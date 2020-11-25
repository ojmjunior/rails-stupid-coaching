require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.register_driver(:headless_chrome) do |app|
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.timeout = 120
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome \
      chromeOptions: { args: %w[headless disable-gpu window-size=1280x760] }
    Capybara::Selenium::Driver.new app,
                                   browser: :chrome, desired_capabilities: capabilities, http_client: client
  end
  driven_by :selenium, using: :headless_chrome
end
