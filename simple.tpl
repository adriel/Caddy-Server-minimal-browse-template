<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Listing /</title>
	<style>
	body
	{
		background-color: #ffffff;
		text-decoration: none;
		font: 13px "Lucida Grande", Lucida, Verdana, sans-serif;
		padding-left: 20px;
		padding-top: 10px;
	}

	h1 {
		color: #484848;
		font-weight: normal;
		font-style: normal;
		font-size: 20px;
		display: none;
	}

	pre.filename {
		padding: 2px 10px 2px 4px;
	}
	pre.filename:hover{
		background-color:#efefef;
		color:#333;
	}


	#back-arrow {
		font: italic 15px "Lucida Grande", Lucida, Verdana, sans-serif;
		padding-right: 2px;
	}
	p.location {
		color: #737373;
		margin-bottom: 15px;
		margin-top: 0;
		font-size: 11px;
	}

	td.tsize, td.tfile {
		line-height: 25px;
	}
	td.tsize {
		margin: 0;
		padding-right: 0;
	}

	td.tfile {
		padding-left: 0;
	}

	div.filesize {
		-moz-user-select: none;
		-khtml-user-select: none;
		user-select: none;
		font-size: 12px;
		color: #6b6b6b;
		min-width: 70px;
	}

	pre.filename, div.filesize {
		margin: 0;
		font-family: "Lucida Grande", Lucida, Verdana, sans-serif;
		line-height: 21px;
	}

	caption.title, caption.titled {
		text-align: left;
		font-weight: bold;
		background-color: #e2e8e8;
	}

	/* Row alt colors */
	pre.filename:nth-child(odd),  {
		background-color: #eff3f3;
	}
	pre.filename:nth-child(even), div.filesizealt:nth-child(even) {
		background-color: #eaefef;
	}

	/* Row hover */
	pre.filename:nth-child(odd):hover {
		background-color: #dfe6e6;
	}

	pre.filename:nth-child(even):hover{
		background-color: #e1e7e7;
	}

	div.filesizealt {
		margin: 0;
		padding-top: 2px;
		padding-bottom: 2px;
		padding-left: 10px;
	}

	/* Row titles */
	table {
		border-spacing: 0;
		color: #414141;
		margin-bottom: 11px;
		background-color: #eff3f3;
		padding: 4px 0 3px;
	}

	caption.title {
		padding: 7px 7px 7px 9px;
		font-size: 17px;
		font-weight: normal;
		font-style: normal;
	}

	/* unvisited link */
	a:link {
		color: #545352;
		text-decoration: none;
	}

	/* visited link */
	a:visited {
		color: #787b7b;
	}


	/* selected link */
	a:active {
		color: #767878;
	}

	</style>
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
