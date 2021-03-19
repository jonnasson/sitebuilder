# INPUT START

puts 'Website title'
sitename = gets.chomp
puts 'Footer? (y or n)'
footer = gets.chomp
puts 'Navigation bar? (y or n)'
navinput = gets.chomp
if navinput == "yes" || navinput == "y"
    puts 'Logo URL (string or leave blank for to insert website title)'
    logourl = gets.chomp
    puts 'Item count navbar (integer)'
    itemcount = gets.chomp.to_i
    puts 'Navbar fixed? (y or n)'
    navbarfixed = gets.chomp
    puts 'Searchbar? (y or n)'
    searchbar = gets.chomp
end

# puts 'Which color should your background have'
# background = gets.chomp

#image slider?
# if yes then how many (default e.g. 3)
#hero banner
# cards
# if yes how many cards
# buttons

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
<body
class='bg-light'
style='min-height: 100vh;
position: relative;
margin: 0 auto;"
if footer == "yes" || footer == 'y'
fileHtml.puts "padding-bottom: 56px;"
end
fileHtml.puts "box-sizing: border-box;'>"

# CONTENT START
# navbar start
if navinput == 'yes' || navinput == 'y'
    if navbarfixed == 'yes' || navbarfixed == 'y'
        fileHtml.puts '<div class="container col-12 bg-light">'
        fileHtml.puts '<nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light bg-white border-bottom border-grey">'
        else
        fileHtml.puts '<div class="container col-12 bg-light" style="padding-left: 0px; padding-right: 0px">'
        fileHtml.puts '<nav class="navbar navbar-expand-lg navbar-light bg-light bg-white border-bottom border-grey">'
    end
    fileHtml.puts '
    <div class="container col-lg-10 col-md-10 px-0">
    <a class="navbar-brand py-0" href="#">'
    unless logourl.empty?
        fileHtml.puts "<img
        src='#{logourl}'
        alt=''
        style='max-height: 40px; width: auto; border-radius: 8px;'
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
        fileHtml.puts '<form class="form-inline my-0 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-0 my-sm-0" type="submit">Search</button>
      </form>'
    end
    fileHtml.puts '</div>'
    fileHtml.puts '</div>'
    fileHtml.puts '</nav>'
end
# navbar end

# container content start
if navinput == 'yes' || navinput == 'y'
    if navbarfixed == 'yes' || navbarfixed == 'y'
        fileHtml.puts '<div class="container col-lg-10 col-md-10 px-0 pb-5" style="padding-top: 76px">'
    else
        fileHtml.puts '<div class="container col-lg-10 col-md-10 px-0 pb-5" style="padding-top: 20px">'
    end
else
    fileHtml.puts '<div class="container col-lg-10 col-md-10 pt-3">'
end
    fileHtml.puts '
    <h1>H1 Headline</h1>
    <h2>H2 Headline</h2>
    <h3>H3 Headline</h3>
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quis quam in voluptas aperiam tempora? Minima necessitatibus iure aliquam optio reiciendis placeat? Fuga quas ab exercitationem earum natus laborum deleniti.
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quis quam in voluptas aperiam tempora? Minima necessitatibus iure aliquam optio reiciendis placeat? Fuga quas ab exercitationem earum natus laborum deleniti.
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quis quam in voluptas aperiam tempora? Minima necessitatibus iure aliquam optio reiciendis placeat? Fuga quas ab exercitationem earum natus laborum deleniti.'
    fileHtml.puts '
    <p>
    <h1>H1 Headline</h1>
    <h2>H2 Headline</h2>
    <h3>H3 Headline</h3>
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quis quam in voluptas aperiam tempora? Minima necessitatibus iure aliquam optio reiciendis placeat? Fuga quas ab exercitationem earum natus laborum deleniti.
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quis quam in voluptas aperiam tempora? Minima necessitatibus iure aliquam optio reiciendis placeat? Fuga quas ab exercitationem earum natus laborum deleniti.
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quis quam in voluptas aperiam tempora? Minima necessitatibus iure aliquam optio reiciendis placeat? Fuga quas ab exercitationem earum natus laborum deleniti.
    </p>
    </div>'
    fileHtml.puts '</div>'
# container content end
if footer == "yes" || footer == 'y'
    fileHtml.puts "<div class='row mx-0 text-muted justify-content-center align-items-center w-100 bg-white'
    style='position: absolute; bottom: 0; height: 56px'
  >
    #{sitename} © "
    time = Time.new
    fileHtml.puts time.year
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
.navbar {
    
}
"
fileCSS.close()

# CSS FILE END
