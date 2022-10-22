

<div align="center">

<img src="https://user-images.githubusercontent.com/112636345/197125026-49d38ff2-07e9-4f53-ac38-3df5dd6746ea.png">
<br>
<br>
<a href="https://github.com/sureshpandiyan1/whaly/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/sureshpandiyan1/whaly"></a>
<a href="https://github.com/sureshpandiyan1/whaly/network"><img alt="GitHub forks" src="https://img.shields.io/github/forks/sureshpandiyan1/whaly"></a>
<a href="https://github.com/sureshpandiyan1/whaly//issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/sureshpandiyan1/whaly"></a>
<img alt="npm" src="https://img.shields.io/npm/dt/whaly?label=npm-downloads">
<img alt="GitHub" src="https://img.shields.io/github/license/sureshpandiyan1/whaly">
</div>

# Description

whaly is the easy way to write a browser-based selenium scripts.It's fully focused on the words,
because words better than codes.it's written in ruby language.

## Phase
    -pre-relase
    
    Note: maybe it's contains few bugs
    
## packages avaliable for install too
    npm i whaly
    
    
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


# demo

![whalyy_dmeo_edit_1](https://user-images.githubusercontent.com/112636345/197121916-ba5e7884-0078-417b-9929-4824d0f9e67c.gif)

after you completely written it, just stop it ctrl + c

## whaly automatically write a selenium based by whaly
![Video_2022_10_21-5_edit_1](https://user-images.githubusercontent.com/112636345/197127611-9c892735-b975-4f49-8afa-bce644bb8b51.gif)

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
| add-cookies { name: 'sadfasdf' , key: 'ads'}            | driver.manage.add_cookie(name:  'sadfasdf',key:  'ads')                                                     |
| show l-all-cookies                                      | driver.manage.all_cookies                                                                                   |
| show -Scookies - 'foo'                                  | driver.manage.cookie_named('foo')                                                                           |
| del -Dcookies  - 'foo'                                  | driver.manage.delete_all_cookies('foo')                                                                     |
| del d-all-cookies                                       | driver.manage.delete_all_cookies                                                                            |

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



# list of whaly shell commands

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
