if ENV["ADB_DEVICE_ARG"].nil?
  require 'kraken-mobile/steps/web/kraken_steps'

  Then(/^I store a variable with the current url$/) do
    $url_variable = @driver.current_url    
    File.write('./.variable.txt', $url_variable)
    puts($url_variable) 
  end

  Given(/^I navigate to page with the url stored in the variable$/) do
    $url_variable = IO.read("./.variable.txt")  
    puts($url_variable)
    @driver.navigate.to $url_variable
    sleep 2
  end
  


  Then("I click in path {string}") do |path|
    @driver.find_element(:xpath,path).click()
    sleep 1
      
  end
  Then("I write text {string} in path {string}") do |text, path|
    @driver.find_element(:xpath,path).send_key(text)
    sleep 1
  end
  Then("I visit to slug route") do 
    $url_variable = @driver.find_element(:xpath,"/html/body/div[4]/div/div/div/div/div/div/div/div[1]/div[2]/form/div[1]/p").text()
    sleep 1
    @driver.navigate.to $url_variable
    
    

  end
  
end