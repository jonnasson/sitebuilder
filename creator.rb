fileHtml = File.new("index.html", "w+")
fileHtml.puts '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <p> This is awesome <p>
</body>
</html>
'
fileHtml.close()

fileHtml = File.new("style.css", "w+")
fileHtml.puts "
body {
    color: green;
}
"
fileHtml.close()