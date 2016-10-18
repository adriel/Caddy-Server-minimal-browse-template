<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Listing /</title>
	<link rel="stylesheet" href="/css/main.css" type="text/css" />
</head>
<body id="index" class="home">
<header>
	<h1>Directory listing</h1>
</header>
{{if .CanGoUp}}
	<p class="location">
		<span id="back-arrow">&lsaquo;</span>
		<a href=".."><script>document.write(location.protocol)</script>//{{$.Host}}{{.Path}}</a>
	</p>
{{end}}
<table>
<caption class="title">Items</caption>
<tbody>
{{range .Items}}
	{{if .IsDir}}
	<tr>
		{{if gt $.NumFiles 0}}
		<td class="tsize">
			<div class="filesizealt"><div class="filesize"></div></div>
		</td>
		{{end}}
		<td class="tfile">
			<pre class="filename"><a href="{{.URL}}"><script>document.write(location.protocol)</script>//{{$.Host}}/{{.Name}}</a></pre>
		</td>
	</tr>
	{{end}}
{{end}}
{{range .Items}}
	{{if not .IsDir}}
	<tr>
		<td class="tsize">
			<div class="filesizealt"><div class="filesize">{{.HumanSize}}</div></div>
		</td>
		<td class="tfile">
			<pre class="filename"><a href="{{.URL}}"><script>document.write(location.protocol)</script>//{{$.Host}}/{{.Name}}</a></pre>
		</td>
	</tr>
	{{end}}
{{end}}

</tbody>
</table>
<div id="buffer"></div>
</body>
</html>
