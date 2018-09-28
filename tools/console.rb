require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

charlie = Customer.new("Charlie", "Day")
dee = Customer.new("Dee", "Reynolds")
mac = Customer.new("Mac", "WhateverMac'sLastNameIs")
dennis = Customer.new("Dennis", "Reynolds")
donald = Customer.new("Mac", "Donald")

paddys = Restaurant.new("Paddy's Pub")
mcdonalds = Restaurant.new("Mickey D's")
panda = Restaurant.new("Panda Express")
dumpster = Restaurant.new("Dumpster Behind Paddy's Pub")

dennis.add_review(mcdonalds, "This place smells like sweaty gym socks", 1)
dee.add_review(panda, "Nice place to wallow in depression and engage in self-destruction; pretty ok lo mein", 4)
mac.add_review(paddys, "Great beer, nice place to carboload, terrible staff tho", 3)
charlie.add_review(mcdonalds, "teribull", 1)
charlie.add_review(panda, "eww", 1)
charlie.add_review(paddys, "awfool", 1)
charlie.add_review(dumpster, "vrry nise", 5)
donald.add_review(mcdonalds, "I hate this place for being named after me. But gosh darn it if they don't have absolutely amazing french fries.", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
