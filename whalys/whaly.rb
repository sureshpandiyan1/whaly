

lz = []

def fileopener(filename)
    the_splits = filename.to_s.split(".")
    if the_splits[1] == "txt"
        File.open(filename) do  |thename|  
            return thename.readlines
        end
    end
end


lz.push(fileopener(ARGV[0]))

votes = []
count = 0

fileopener(ARGV[0]).each do |line|
    name = line.chomp
    votes.push(name)
end

values = []
counter = 0
votes.each do |thehow|
    spts = thehow
    values << spts.to_s.split("is")[1]
end

path = []
counter = 0
votes.each do |thehow|
    spts = thehow
    x = spts.to_s.split("find ")[1]
    xx = x.to_s.split("is")
    path << xx[0]
end


pzath = []
counter = 0
votes.each do |thehow|
    spts = thehow
    x = spts.to_s.split("is")[1]
    xx = x.to_s.split(".")
    pzath << xx[1]
end


storeit = []
counter = 0
votes.each do |thehow|
    spts = thehow
    x = spts.to_s.split(" ")
    storeit << x
end


ppp = []

fileopener(ARGV[0]).each do |plm|
    ppp << plm.split("\n")
end

plm = 0
sz = []
ppp.each do |how|
    sz.push(how.to_s.split(" "))
    plm += 1
end

z = storeit.length

counter = 0
st = 0
game = []
# lkm = {}
# z = []
while counter < z
        ps = storeit[counter]
        history = { '<--' => 'driver.navigate.back', '-->' => 'driver.navigate.forward', 'refresh' => 'driver.navigate.refresh'}
        if storeit[counter][ps.find_index("@import").to_i + 1] == "-"
            valz = {'whaly-engine' => 'selenium-webdriver',
                    'whaly-gems' => 'rubygems'}
            game << format("require '%s'",valz[storeit[counter][2]])
        elsif storeit[counter][ps.find_index("start-whaly-engine").to_i + 1] == 'c' || storeit[counter][ps.find_index("start-whaly-engine").to_i + 1] == 'f' || storeit[counter][ps.find_index("start-whaly-engine").to_i + 1] == 'i'
            engine_values = {
                'c' => 'chrome', 
                'f' => 'firefox',
                'i' => 'ie'
            }
            engine = storeit[counter][ps.find_index("start-whaly-engine").to_i + 1]
            game << format("driver = Selenium::WebDriver.for(:%s)",engine_values[engine])
        elsif storeit[counter].find_index("<--") 
            game << history['<--']
        elsif storeit[counter].find_index("-->") 
            game << history['-->']
        elsif storeit[counter].find_index("refresh!!") 
            game << history['refresh']
        elsif sz[counter].find_index("keyboard") || sz[counter].find_index("mouse")
            pppp = []
            pppp << sz[counter].to_s.sub("[","").sub("]","")
        
            rejectwords = pppp.to_s.split("\n").to_s.chars
            removeit = rejectwords.reject { |lop| lop.include?("[") || lop.include?("]") || lop.include?("\"") || lop.include?("\\") || lop.include?(", ")}
             
            zu = []
            
            removeit.join("").split("I/O") do |lll|
                if lll
                    zu << "driver.action." + lll.to_s.sub(" mouse,","").sub(" keyboard,","").sub(", ","").sub(", =>, "," => ").sub(", "," ").sub(", "," ").sub(", "," ")
                end
            end
        
            rej = zu.reject { |llkm| llkm if llkm == "driver.action."}
        
            rej.each do |lolo|
                game << lolo
            end
        elsif storeit[counter][ps.find_index("stop-whaly-engine").to_i + 1] == '-quit'
                engine = storeit[counter][ps.find_index("stop-whaly-engine").to_i + 1]
                engine_values = {
                    '-quit' => 'quit'
            }
                game << format("driver.%s",engine_values[engine])
        elsif storeit[counter][ps.find_index("imp-wait").to_i + 1] == "++"
            game << format("driver.manage.timeouts.implicit_wait = %s",storeit[counter].last)
        elsif storeit[counter][ps.find_index("imp-wait").to_i + 1] == "--"
            game << format("driver.manage.timeouts.implicit_wait = %s",0)
        elsif storeit[counter][ps.find_index("go").to_i + 3] == "url"
            l = storeit[counter][ps.find_index("url").to_i + 1]
            game << format("driver.navigate.to(%s)",l.split("\"]")[0]) 
        elsif storeit[counter][ps.find_index("find").to_i + 2] == "is"
            a = storeit[counter][ps.find_index("find").to_i + 1]
            rej =  storeit[counter].reject { |ll| ll.include?("is")}
            rejj =  rej.reject { |ll| ll.include?("find")}
            rejjj = rejj.reject { |llz| llz.include?(rejj[0])}
            first  = values[counter]
            if pzath[counter]
                game << format("driver.find_element(:%s,%s).%s",a,values[counter].to_s.split(".")[0],pzath[counter])
            else
                game << format("driver.find_element(:%s,%s)",a,values[counter])
            end
        elsif storeit[counter][ps.find_index("and").to_i  + 1] == "select-by" 
            b = storeit[counter][ps.find_index("isz").to_i - 1]
            a = values[counter].to_s.split("and")[0].split("z")[1]
            s =   values[counter].to_s.split("select-by")[1].split("-")[1]
            m =   values[counter].to_s.split("select-by")[1].split("-")[2]
            game <<  format("Selenium::WebDriver::Support::Select.new(driver.find_element(:%s, %s)).select_by(%s,%s)",b,a,s,m)
        elsif storeit[counter][ps.find_index("and").to_i  + 1] == "deselect-by" 
            b = storeit[counter][ps.find_index("isz").to_i - 1]
            a = values[counter].to_s.split("and")[0].split("z")[1]
            s =   values[counter].to_s.split("deselect-by")[1].split("-")[1]
            m =   values[counter].to_s.split("deselect-by")[1].split("-")[2]
            game << format("Selenium::WebDriver::Support::Select.new(driver.find_element(:%s, %s)).deselect_by(%s,%s)",b,a,s,m)
        elsif storeit[counter][ps.find_index("add-cookies").to_i + 1] == "{"
            chk = {}
            lzz = 0
            storeit[counter].each do |ll|
                chk[lzz] = ll
                lzz += 1
            end
            zd = chk.values.to_s.split(",").reject { |ll| ll.include?(",") || ll.include?("   ") || ll.include?("add-cookies")}
            py = zd.to_s.split("").reject { |lkjn| lkjn.include?("\"") || lkjn.include?("add-cookies") || lkjn.include?("]") || lkjn.include?("[") || lkjn.include?("\\") || lkjn.include?("{")}
            pkj = []
            py.each do |lkjj|
                pkj << lkjj.sub(",","")
            end
            polm = pkj.join("").sub("   ","")
            pjk = []
            polm.to_s.split("     ") do |plkjm|
                pjk.push(plkjm + ',')
            end
            singleline = ''
            pjk.each do |plkj|
                singleline += plkj
            end
            game << "driver.manage.add_cookie(#{singleline.sub("},","")})"
        elsif storeit[counter][ps.find_index("show").to_i + 1] == "l-all-cookies"
            game << "driver.manage.all_cookies"
        elsif storeit[counter][ps.find_index("del").to_i + 1] == "d-all-cookies"
            game << "driver.manage.delete_all_cookies"
        elsif storeit[counter][ps.find_index("show").to_i + 1] == "-Scookies"
            ik = storeit[counter].reject { |lzp| lzp.include?("-") || lzp.include?("show")}
            game << format("driver.manage.cookie_named(%s)",ik[0])
        elsif storeit[counter][ps.find_index("show").to_i + 1] == "-Dcookies"
            ik = storeit[counter].reject { |lzp| lzp.include?("-") || lzp.include?("del")}
            game << format("driver.manage.delete_all_cookies(%s)",ik[0])
        elsif storeit[counter].length < 2
            game << "\n"
        elsif storeit[counter][ps.find_index("delay-for").to_i]
            if storeit[counter][ps.find_index("delay-for").to_i]
                game << format("sleep %s", storeit[counter][1])
            else
                game << format("%s", storeit[counter][1])
            end
        end
        counter += 1
end


File.open("whalytest_" + ARGV[0] + ".rb",'w') do |file|
    game.map do |ll|
        file.write(ll + "\n")
    end
end
