fileHtml = File.new("index.html", "w+")
fileHtml.puts "<HTML><BODY BGCOLOR='green'>"
fileHtml.puts "<CENTER>this is neat</CENTER>"
fileHtml.puts "</BODY></HTML>"
fileHtml.puts "</BODY></HTML>"
fileHtml.puts "</BODY></HTML>"
fileHtml.close()

fileHtml = File.new("style.css", "w+")
fileHtml.puts "
body {
    color: green;
    background: red;
}
"
fileHtml.close()