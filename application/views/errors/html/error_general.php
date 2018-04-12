<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title><?=$heading?$heading:"Error"?></title>
<style type="text/css">

::selection { background-color: #E13300; color: white; }
::-moz-selection { background-color: #E13300; color: white; }

body {
	background: linear-gradient(#6a75df, #7b4ab7) no-repeat;
        background-size: 100%;
        margin: 40px;
        height: 100%;
        background-attachment: fixed;
	font: 13px/20px normal Helvetica, Arial, sans-serif;
	color: #fff;
}

a {
	color: #fff;
	background-color: transparent;
	font-weight: normal;
}

h1 {
	color: #fff;
	background-color: transparent;
	border-bottom: 1px solid #D0D0D0;
	font-size: 19px;
	font-weight: normal;
	margin: 0 0 14px 0;
	padding: 14px 15px 10px 15px;
}

code {
	font-family: Consolas, Monaco, Courier New, Courier, monospace;
	font-size: 12px;
	background-color: #f9f9f9;
	border: 1px solid #D0D0D0;
	color: #002166;
	display: block;
	margin: 14px 0 14px 0;
	padding: 12px 10px 12px 10px;
}

#container {
	margin: 10px;
	border: 1px solid #D0D0D0;
	box-shadow: 0 0 8px #D0D0D0;
}

p {
	margin: 12px 15px 12px 15px;
}
.homelink{
     opacity: 0.5;
     text-decoration: none;
     background: #AEA8D3;
     padding: 20px 50px;
     border-radius: 10px;
     color: #000;
     text-shadow:1px 1px #fff;
     font-size: 20px;
}
.homelink:hover{
    opacity: 1;
    color: #fff;
     text-shadow:1px 1px gray;
     font-size: 20px;
}
</style>
</head>
<body>
	<div id="container">
            
            
		<h1><?php echo $heading; ?></h1>
		<?php echo $message; ?>
                
                
	</div>
    <div style="text-align: center; align-self: center; margin-top: 50px;">
        <a class="homelink" style=""  href="<?= base_url('admin')?>"><i class="fa fa-home"></i>  Go to home</a>
        
    </div>
</body>
</html>