

<div align="center">

<img src="https://user-images.githubusercontent.com/112636345/197125026-49d38ff2-07e9-4f53-ac38-3df5dd6746ea.png">
<br>
<br>
<a href="https://github.com/sureshpandiyan1/whaly/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/sureshpandiyan1/whaly"></a>
<a href="https://github.com/sureshpandiyan1/whaly/network"><img alt="GitHub forks" src="https://img.shields.io/github/forks/sureshpandiyan1/whaly"></a>
<a href="https://github.com/sureshpandiyan1/whaly//issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/sureshpandiyan1/whaly"></a>
<img alt="GitHub tag (latest by date)" src="https://img.shields.io/github/v/tag/sureshpandiyan1/whaly">
<img alt="GitHub" src="https://img.shields.io/github/license/sureshpandiyan1/whaly">
<img src="https://img.shields.io/gem/dv/whaly/1.0.4?color=red&style=for-the-badge">
    
</div>

# Description

whaly is the easy way to write a browser-based selenium scripts.It's fully focused on the words,
because words better than codes.it's written in ruby language.it's only compatible for linux platform.

## pre-release version
    
    v1.0.4


# Pre-requisite

    BEFORE YOU USE WHALY

    - need to install ruby interpreter
    - following gem package need to install - selenium-webdriver 


## you can install via gem & guidelines how to use whaly gem

    gem install whaly
    
    ## guidelines for ruby users
    
    step1: create a your own empty filename, Example: 'test_google.txt'
    step2: create a new .rb file, Example: 'whaly-file.rb'
        require 'whaly'
        
        my_whaly = Whaly.new()
        my_whaly.whaly_s('test_google.txt')
       
     step3:  run whaly-file.rb in your terminal, Example: whaly-file.rb
     
     "whaly engine is running until you press ctrl + c to stop"
     
     step4: you are ready to write whaly codes in demo.txt, 
            it will convert to selenium code in whalytest_test_google.txt.rb
            
     if you want to stop the whaly-engine, just press ctrl + c at terminal for stop
     
    
## Phase
    -pre-release
    
    Note: maybe it's contains few bugs

    
# highlights
- you can write words instead of codes
- runs smoothly without delay
- builtin ruby
- easy to use


# how to setup ?

    In your bash,
    alias whaly='bash whalys/whaly-runner.sh'


# how to run ?
    
    whaly <your text filename> [--options]
    
    Example:
        whaly google.txt --create


# demo (windows/bash)

[whaly_demos_edit_0.webm](https://user-images.githubusercontent.com/112636345/197678607-a462856a-4c49-4345-a625-45edcb7ce2a9.webm)

## whaly automatically write a selenium based by whaly

![whaly_dd_edit_0_edit_4](https://user-images.githubusercontent.com/112636345/197680695-9edd9d0d-dc45-4faa-b462-7188a3abb1f5.gif)

after you completely written it, just stop it ctrl + c


# list of all valid whaly - pre-release

| if you write this in whaly                              | produce                                                                                                     |
|---------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| @import - whaly-engine                                  | require 'selenium-webdriver'                                                                                |
| whaly-start-engine c                                    | driver = Selenium::WebDriver.for(:chrome)                                                                   |
| go to the url "https://www.google.com"                  | driver.navigate.to('https://www.google.com')                                                                |
| find name is 'q' .click                                 | driver.find_element(:name, 'q' ).click                                                                      |
| delay-for 0.2                                           | sleep 0.2                                                                                                   |
| select name isz 'animals' and select-by - value - 'dog' | Selenium::WebDriver::Support::Select.new(driver.find_element(:name,  'animals' )).select_by( value , 'dog') |
| stop-whaly-engine -quit                                 | driver.quit                                                                                                 |
| add-cookies { name: 'hello' , value: 'howareyou' , same_site: 'Strict'} | driver.manage.add_cookie(name:  'hello',value:  'howareyou',same_site:  'Strict')           |
| show l-all-cookies                                      | driver.manage.all_cookies                                                                                   |
| show -Scookies - 'foo'                                  | driver.manage.cookie_named('foo')                                                                           |
| del -Dcookies  - 'foo'                                  | driver.manage.delete_all_cookies('foo')                                                                     |
| del d-all-cookies                                       | driver.manage.delete_all_cookies                                                                            |
| I/O keyboard key-up:(shift).send-keys(4,2).key-down.('how are you').send-keys(:shift).perform | driver.action.key-up:(shift).send-keys(4,2).key-down.('how are you').send-keys(:shift).perform  |
| <-- button                                               | driver.navigate.back                                |
| --> button                                               | driver.navigate.forward                             |
| just refresh!!                                           | driver.navigate.refresh                             |



    whaly-start-engine 
    c for chrome
    f for firefox
    i for ie


# Try this Example below:

    step 1: create empty file name as google.txt <br>
    step 2: whaly google.txt --create <br>
    step 3: whaly google.txt --run

### google.txt
```
@import - whaly-engine

start-whaly-engine c

go to the url 'https://www.google.com'

delay-for 3
find name is 'q'.send_keys('how are you man')
find xpath is '/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]'.click

delay-for 2
stop-whaly-engine -quit
```
### output: 
### this file automatically located at whalytest-scripts/whalytest_demo.txt.rb

![directory](https://user-images.githubusercontent.com/112636345/197121966-edeb1210-190f-4c3f-847c-f6619e655d02.jpg)

```
require 'selenium-webdriver'

driver = Selenium::WebDriver.for(:chrome)

driver.navigate.to('https://www.google.com')
sleep 3
driver.find_element(:name, 'q').send_keys('how are you man')
driver.find_element(:xpath, '/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]').click

sleep 2
driver.quit
```

# code comparsion

![code_comparsion](https://user-images.githubusercontent.com/112636345/197122004-dbddac85-91d9-4e05-89e3-5c6f2d266bf7.png)



# list of whaly shell commands (not for ruby gems)

| arguments | definition                                                     |
|-----------|----------------------------------------------------------------|
| --run     | complier the file continously <br> whaly [your filename] --run |
| --create  | create a file format to ruby <br> whaly [filename] --create    |
| --about   | about whaly <br> whaly --about                                 |


# main focus of whaly
    - anybody can use without any prior programming knowledge
    - easy to use


# copyright & license

copyright @ Suresh P | All rights reserved | MIT License 
