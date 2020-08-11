require shodan
require os
require absolute_time
require Time


def resultinfile(info)
  File.open((result_file) + ".txt", "a+") do |file|
    file.write(info)
  end
end

result_file = gets.chomp() 
  puts "\n"
    logger(info)


def otgems()
  if os.path.getsize("./shodanapi.txt") > 0
    File.open("shodanapi.txt", "r") do |file|
            apiKey = file.readline().strip("\n")
else
        file = open("shodanapi.txt", "w")
               apiKey = input("Enter a shodan API key")
              file.write(apiKey)
        puts "File written"
        file.close()

    api = shodan.Shodan(apiKey)
    sleep(0.6)

    lim = 999
    tercoin = 1

    
           api.search("srch_wrds")
        puts ("Valid API key received!!!")
        sleep(0.6)
        puts "Enter something to search"
        srch_wrds = gets.chomp()

        tercoin = tercoin + 1
        for arjx in api.search_cursor(srch_wrds)
            puts ("IP Address: " + (arjx["ip_str"]))
          puts ("Port:" + (arjx["port"]).to_s)
            puts ("Organization:" + (arjx["org"]).to_s)
            puts ("Location: " + (arjx["location"]).to_s)
               
            puts ("[Domains:" + (arjx["domains"]).to_s)
            puts ("[Hostnames:" + (arjx["hostnames"]).to_s)
            puts ( (arjx["info"]))
            puts (" Result:" + tercoin.to_s + "Search query: " +   srch_wrds.to_s)

            info = ("\nIP: " + arjx["ip_str"]) + ("\nPort: " + (arjx["port"]).to_s) + ("\nOrganisation: " + (arjx["org"]).to_s) + ("\nLocation: " + (arjx["location"]).to_s) + ("\nLayer: " + arjx["transport"]) + ("\nDomains: " + (arjx["domains"]).to_s) + ("\nHostnames: " + (arjx["hostnames"]).to_s) + ("\nData\n" + arjx["info"])
            logger(info)
            sleep(0.1)
            puts ("\n")
        end

            tercoin = tercoin + 1
            if tercoin >= lim
                exit()
            end

               myapi = input("Enter y to select new api").lower()
       if myapi.startswith("y" or "Y")
       file = open("api.txt", "w")
              apiKey = input("[✓] \033[34mPlease enter valid Shodan.io API Key:\033[0m ")
                      file.write(apiKey)
        puts ("File written")
      end
                              sleep(1)
                
      else
                puts ("\n")
                

      end

