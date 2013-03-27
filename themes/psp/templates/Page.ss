<!DOCTYPE html>
<html>
	<head>
		<title>PSP - $Title</title>
		$MetaTags(false)
		<% base_tag %>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<% require javascript(themes/psp/javascript/psp.js) %>
		<% require themedCSS(master) %>
		<% require themedCSS(psp) %>
		<meta name="viewport" content="initial-scale=1, width=device-width">
		<style type="text/css">
			@font-face {
			    font-family: 'PaG';
			    font-style: normal;
			    font-weight: 400;
			    src: url($ThemeDir/fonts/partyatgatsbys-webfont.woff) format('woff');
			}
		</style>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	</head>
	<body>
		<div id="uiowa-banner" class="row-fluid">
			<div class="c">
				<span id="uiowa-dsl-dir" class="span6">
					<a href="http://studentlife.uiowa.edu/about/directory/" target="_blank">Division of Student Life Directory</a>
				</span>
				<span id="uiowa-logo" class="span6">
					<embed src="$ThemeDir/images/DomeWordsingleNoDome-white.svg" type="image/svg+xml">
				</span>
			</div>
		</div>
		<div id="heading-banner">
			<div class="c">
				<img src="$ThemeDir/images/gatsby-head@2x.png">
				<span id="head-line"></span>
				<nav>
					<a href="{$BaseHref}">Home</a>
					<a href="{$BaseHref}register">Register</a>
					<a href="{$BaseHref}schedule">Schedule</a>
					<a href="{$BaseHref}people">People</a>
					<a href="{$BaseHref}supply-drive">Supply Drive</a>
				</nav>
			</div>
		</div>
		<div style="clear: both;"></div>	
		<div id="main">
			<div class="c">
				$Layout
				<div class="asides"></div>
			</div>
		</div>
		<div id="footer" class="row-fluid">
			<div class="c">
				<span class="span5">
					<img src="$ThemeDir/images/dome@2x.png" width="75" style="float: left; margin-right: 1rem;">
					<p style="color: #888;">
						The PSP Epsilon Sigma Chapter is a unit within the Division of Student Life. We are a honor fraternity consisting of students at the University of Iowa.
					</p>
				</span>
				<span class="span3">
					<a href="{$BaseHref}">Home</a>
					<a href="{$BaseHref}register">Register</a>
					<a href="{$BaseHref}schedule">Schedule</a>
					<a href="{$BaseHref}people">People</a>
					<a href="{$BaseHref}supply-drive">Supply Drive</a>
				</span>
				<span class="span4">
					<a target="_blank" href="http://www.facebook.com/pages/Phi-Sigma-Pi-National-Honors-Fraternity-at-UIowa/100367310092333">Facebook</a>
					<a target="_blank" href="https://twitter.com/phisigmapi">Twitter</a>
				</span>
			</div>
		</div>
	</body>
</html>
