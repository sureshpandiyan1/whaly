

<div align="left">
<h1> whaly</h1>
</div>
<div align="left">
<a href="https://github.com/sureshpandiyan1/whaly/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/sureshpandiyan1/whaly"></a>
<a href="https://github.com/sureshpandiyan1/whaly/network"><img alt="GitHub forks" src="https://img.shields.io/github/forks/sureshpandiyan1/whaly"></a>
<a href="https://github.com/sureshpandiyan1/whaly//issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/sureshpandiyan1/whaly"></a>
</div>

<br>

# whaly

whaly is the easy way to write a browser-based selenium scripts.It's fully focused on the words,
because words better than codes.it's written in ruby language.

## Phase
    -pre-relase
    
    Note: maybe it's contains few bugs

# list of all valid whaly - pre-release

| if you write this in whaly                              | produce                                                                                                     |
|---------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| @import - whaly-engine                                  | require 'selenium-webdriver'                                                                                |
| whaly-start-engine c                                    | driver = Selenium::WebDriver.for(:chrome)                                                                   |
| go to the url 'https://www.google.com'                  | driver.navigate.to('https://www.google.com')                                                                |
| find name is 'q' .click                                 | driver.find_element(:name, 'q' ).click                                                                      |
| delay-for 0.2                                           | sleep 0.2                                                                                                   |
| select name isz 'animals' and select-by - value - 'dog' | Selenium::WebDriver::Support::Select.new(driver.find_element(:name,  'animals' )).select_by( value , 'dog') |
| stop-whaly-engine -quit                                 | driver.quit                                                                                                 |

    whaly-start-engine 
    c for chrome
    f for firefox
    i for ie

# highlights
- you can write words instead of codes
- runs smoothly without delay
- other way to write selenium scripts
- builtin ruby


# how to setup ?

    In your bash,
    alias whaly='bash whalys/whaly-runner.sh'

# how to run ?
    
    whaly <your text filename> [--options]
    
    Example:
        whaly google.txt --create

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


# demo video





after you completely written it, just stop it ctrl + c



# list of whaly shell commands

| arguments | definition                                                     |
|-----------|----------------------------------------------------------------|
| --run     | complier the file continously <br> whaly [your filename] --run |
| --create  | create a file format to ruby <br> whaly [filename] --create    |
| --about   | about whaly <br> whaly --about                                 |


# copyright & license

copyright @ Suresh P | All rights reserved | MIT License 
