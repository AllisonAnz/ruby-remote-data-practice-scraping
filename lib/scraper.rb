require 'nokogiri'
require 'open-uri'

#html = open("https://flatironschool.com/")

#use the Nokogiri::HTML method to take the string of HTML
#   returned by open-uri's open method and convert it into a NodeSet(a bunch of nested "nodes")
# Nokogiri::HTML(html)

#save the HTML document in a variable, doc that we can operate on
#doc = Nokogiri::HTML(html)
doc = Nokogiri::HTML(open("https://flatironschool.com/"))

# Let's call .css on doc and give the argument of our CSS selector:
doc.css(".headline-260IBN").text
    #If we were to copy and paste the above code into IRB, 
    #it would return a dense array, with one Nokogiri object
    #at the end it has 'Change things'
    #To get it out, we call .text
    #   .text allows use to acces text content inside an element
    #   add .strip to the end we can clean up the extra whitepace and simply return "Change things."

#using puts or print on doc.css will cause the HTML elements to print out
puts doc.css(".headline-260IBN")