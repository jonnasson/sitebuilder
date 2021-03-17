# INPUT START

puts 'Name of your site'
sitename = gets.chomp
puts 'Footer yes or no'
footer = gets.chomp
puts 'Do you want a navigation bar?'
navinput = gets.chomp
if navinput == "yes" || navinput == "y"
    puts 'Provide a logo URL please'
    logourl = gets.chomp
    puts 'How many items in the navbar?'
    itemcount = gets.chomp.to_i
    puts 'Navbar fixed?'
    navbarfixed = gets.chomp
    puts 'Searchbar?'
    searchbar = gets.chomp
end

# puts 'Which color should your background have'
# background = gets.chomp

# INPUT END

# HTML FILE START
fileHtml = File.new("new.html", "w+")
fileHtml.puts "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>#{sitename}</title>
    <link rel='stylesheet' href='stylenew.css'>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css' integrity='sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l' crossorigin='anonymous'>
</head>
<body>"

# CONTENT START
# navbar start
if navinput == 'yes' || navinput == 'y'
    fileHtml.puts '<div class="container col-lg-8">'
    if navbarfixed == 'yes' || navbarfixed == 'y'
        fileHtml.puts '<nav class="navbar navbar-expand-md fixed-top navbar-light bg-light">'
        else
        fileHtml.puts '<nav class="navbar navbar-expand-md navbar-light bg-light">'
    end
    fileHtml.puts '
    <div class="container col-lg-8">
    <a class="navbar-brand" href="#">'
    unless logourl.empty?
        fileHtml.puts "<img
        src='#{logourl}'
        alt=''
        style='height: 50px; width: auto'
        />"
    else
        fileHtml.puts "#{sitename}"
    end
    fileHtml.puts'</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">'
    itemcount.times do
        fileHtml.puts '<li class="nav-item">
        <a class="nav-link" href="#">Item</a>
      </li>'
    end
    fileHtml.puts '</ul>'
    if searchbar == 'yes' || searchbar == 'y'
        fileHtml.puts '<form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>'
    end
    fileHtml.puts '</div>'
    fileHtml.puts '</div>'
    fileHtml.puts '</nav>'
end
# navbar end

# container content start
    fileHtml.puts '
    <div class="container pb-5" style="padding-top: 80px; min-height: 95vh">
    <h1>H1 Headline</h1>
    <h2>H2 Headline</h2>
    <h3>H3 Headline</h3>
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quis quam in voluptas aperiam tempora? Minima necessitatibus iure aliquam optio reiciendis placeat? Fuga quas ab exercitationem earum natus laborum deleniti.
    </div>'
# container content end
if footer == "yes" || footer == 'y'
    fileHtml.puts "<div class='footer text-center pb-2'>
    #{sitename} © "
    time = Time.new
    fileHtml.puts time.year
    fileHtml.puts '</div>'
    fileHtml.puts '</div>'
end

#CONTENT END
fileHtml.puts '
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
</html>
'
fileHtml.close()

# HTML FILE END


# CSS FILE START

fileCSS = File.new("stylenew.css", "w+")
fileCSS.puts "
body {
    background: ;
}
"
fileCSS.close()

# CSS FILE END
