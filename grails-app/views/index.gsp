<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Welcome to Recreational Activity Management System</title>
<style type="text/css" media="screen">
#login {
	margin: 15px 0px;
	padding: 0px;
	text-align: center;
}

#login .inner {
	width: 260px;
	margin: 0px auto;
	text-align: left;
	padding: 10px;
	border-top: 1px dashed #499ede;
	border-bottom: 1px dashed #499ede;
	background-color: #3399cc;
}

#login .inner .fheader {
	padding: 4px;
	margin: 3px 0px 3px 0;
	color: #3399cc;
	font-size: 14px;
	font-weight: bold;
}

#login .inner .cssform p {
	clear: left;
	margin: 0;
	padding: 5px 0 8px 0;
	padding-left: 105px;
	border-top: 1px dashed gray;
	margin-bottom: 10px;
	height: 1%;
}

#login .inner .cssform input[type='text'] {
	width: 120px;
}

#login .inner .cssform label {
	font-weight: bold;
	float: left;
	margin-left: -105px;
	width: 100px;
}

#login .inner .login_message {
	color: red;
}

#login .inner .text_ {
	width: 120px;
}

#login .inner .chk {
	height: 12px;
}

#status {
	background-color: #3399cc;
	border: .2em solid #fff;
	margin: 2em 2em 1em;
	padding: 1em;
	width: 12em;
	float: left;
	-moz-box-shadow: 0px 0px 1.25em #ccc;
	-webkit-box-shadow: 0px 0px 1.25em #ccc;
	box-shadow: 0px 0px 1.25em #ccc;
	-moz-border-radius: 0.6em;
	-webkit-border-radius: 0.6em;
	border-radius: 0.6em;
}

.ie6 #status {
	display: inline;
	/* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#status ul {
	font-size: 0.9em;
	list-style-type: none;
	margin-bottom: 0.6em;
	padding: 0;
}

#status li {
	line-height: 1.3;
}

#status h1 {
	text-transform: uppercase;
	font-size: 1.1em;
	margin: 0 0 0.3em;
}

#page-body {
	margin: 2em 1em 1.25em 18em;
}

h2 {
	margin-top: 1em;
	margin-bottom: 0.3em;
	font-size: 1em;
}

p {
	line-height: 1.5;
	margin: 0.25em 0;
}

#controller-list ul {
	list-style-position: inside;
}

#controller-list li {
	line-height: 1.3;
	list-style-position: inside;
	margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
	#status {
		display: none;
	}
	#page-body {
		margin: 0 1em 1em;
	}
	#page-body h1 {
		margin-top: 0;
	}
}
</style>
</head>
<body>
	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div id="status" role="complementary">
		<h2>Available Functions:</h2>

		<g:each var="c"
			in="${grailsApplication.controllerClasses.sort { it.fullName } }">
			<ul class="controller">
				<g:link controller="${c.logicalPropertyName}">
					${c.name}
				</g:link>
			</ul>
		</g:each>
		<h1>Available Users</h1>

		<ul>

		</ul>
	</div>
	<div id="page-body" role="main">
		<h1>Welcome to Recreational Activity Management System</h1>
		<p>Hello, Welcome to the RAMS system for managing recreational
			activity Please select an available feature on the left.</p>
	</div>


<script type='text/javascript'>
<!--
(function(){
	document.forms['loginForm'].elements['j_username'].focus();
})();
// -->
</script>
</body>
</html>