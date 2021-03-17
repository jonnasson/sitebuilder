puts 'How many items in the navbar?'
itemcount = gets.chomp.to_i


fileHtml = File.new("newtest.html", "w+")


itemcount.times do
    fileHtml.puts "<li>NavItem</li>"
end