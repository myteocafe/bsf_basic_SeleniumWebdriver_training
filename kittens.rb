require 'selenium-webdriver'

#This function will perform a Google search based on a search keyword passed as a parameter
def do_search(search_keyword)
  #Lets locate the Google search box element and store it a variable (search_box)
  search_text_field = @driver.find_element(:id, 'lst-ib')

  #Lets enter a keyword (search_keyword) in the search box element
  search_text_field.send_keys(search_keyword)

  #Lets locate the Google search button element and store it a variable (search_button)
  search_button = @driver.find_element(:name, 'btnG')

  #Lets click on the Google search button (search_button)
  search_button.click
end

#Lets create a new Selenium Webdriver instance
@driver = Selenium::WebDriver.for :firefox

#Lets use the Selenium Webdriver instance to navigate to the Google home page
@driver.navigate.to 'http://google.com/'

#Lets call the function do_search to search for the keyword "Kittens"
do_search('Kittens')

#Lets wait 5 seconds to observe if the search was correct
sleep 5

#Lets terminate the browser session
@driver.quit