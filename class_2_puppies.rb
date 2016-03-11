require 'selenium-webdriver'


def click_on_view_details_button
  view_details_button = @driver.find_element(:xpath, '//input[@value = "View Details"]')
  view_details_button.click
end

def click_on_adopt_button
  adopt_button = @driver.find_element(:xpath, '//input[@value = "Adopt Me!"]')
  adopt_button.click
end

def click_on_complete_adoption_button
  complete_adoption_button = @driver.find_element(:xpath, '//input[@value = "Complete the Adoption"]')
  complete_adoption_button.click
end

def enter_name(name)
  name_text_field = @driver.find_element(:id, 'order_name')
  name_text_field.send_keys(name)
end

def enter_address(address)
  address_text_field = @driver.find_element(:id, 'order_address')
  address_text_field.send_keys(address)
end

def enter_email(email)
  email_text_field = @driver.find_element(:id, 'order_email')
  email_text_field.send_keys(email)
end

def select_pay_type(pay_type)
  pay_type_drop_down_list = @driver.find_element(:id, 'order_pay_type')
  option = Selenium::WebDriver::Support::Select.new(pay_type_drop_down_list)
  option.select_by(:text, pay_type)
end

def place_order
  place_order_button = @driver.find_element(:xpath, '//input[@value = "Place Order"]')
  place_order_button.click
end


#Adopt a puppy. We are adopting the first puppy in the list
@driver = Selenium::WebDriver.for :firefox
@driver.navigate.to 'http://puppies.herokuapp.com/'
click_on_view_details_button
sleep 3
click_on_adopt_button
sleep 3
click_on_complete_adoption_button
sleep 3
enter_name('Homer Simpson')
enter_address('Evergreen Terrace 742')
enter_email('test@bsf.com')
select_pay_type('Check')
place_order
sleep 5
@driver.quit