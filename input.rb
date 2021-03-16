# puts 'Name of your site'
# sitename = gets.chomp
# puts 'Footer yes or no'
# footer = gets.chomp
# puts 'Do you want a navigation bar?'
# navinput = gets.chomp
puts 'How many items in the navbar?'
itemcount = gets.chomp.to_i
# puts 'Navbar fixed?'
# navbarfixed = gets.chomp
# puts 'Which color should your background have'
# background = gets.chomp


fileHtml = File.new("new.html.erb", "w+")
fileHtml.puts "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>sitename</title>
    <link rel='stylesheet' href='stylenew.css'>
</head>
<body>
    <nav>
        <ul>
            <%= #{itemcount}.times { 'hello' } %>
        </ul>
    </nav>
</body>
</html>
"
fileHtml.close()

fileHtml = File.new("stylenew.css", "w+")
fileHtml.puts "
body {
    background: ;
}
"
fileHtml.close()